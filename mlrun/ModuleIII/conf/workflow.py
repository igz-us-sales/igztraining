
from kfp import dsl
from mlrun import mount_v3io

@dsl.pipeline(
    name = 'Property Management',
    description = 'Condo reviews'
)

# Configure function resources and local settings
def init_functions(functions: dict, project=None, secrets=None):
    for f in functions.values():
        f.apply(mount_v3io())


def kfpipeline(
    source_file :str = ""
) -> None:
    
    save_properties = funcs['properties-handler'].as_step(handler='save_properties',
                            params={"source_file" : source_file,
                                    "target_file" : "/User/igztraining/mlrun/data/condos.csv" },
                            outputs=['condo_properties'])
    
    
    filter_properties = funcs['properties-handler'].as_step(handler='filter_properties',
                                   params={"city" : "SACRAMENTO",
                                           "target_dataset" : "sacramento_condos" },
                                   inputs={"source_data":save_properties.outputs["condo_properties"]})
