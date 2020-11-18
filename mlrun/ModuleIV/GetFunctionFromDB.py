#!/usr/bin/env python
# coding: utf-8

# In[12]:


from mlrun import db,get_run_db, import_function,mount_v3io


# In[17]:


artifact_path = '/User/artifact'


# ### List functions in a project

# In[18]:


db = get_run_db().connect()


# In[28]:


db.list_functions(project='properties-management')


# ### Import a specific version of a function

# In[37]:


fn = import_function(url='db://properties-management/properties-management')


# In[38]:


print(fn.to_yaml())


# ### Execute function

# In[35]:


fn.apply(mount_v3io())


# In[39]:


fn.run(artifact_path=artifact_path,handler='save_properties',params={"source_file" : '/User/igztraining/mlrun/Day-4/data/demo.csv',
                                    "target_file" : "/User/igztraining/mlrun/data/condos.csv" })


# In[ ]:




