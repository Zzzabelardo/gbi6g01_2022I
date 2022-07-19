#!/usr/bin/env python
# coding: utf-8

# # <center> Universidad Regional Amazónica Ikiam    
# ### <center> Facultad Ciencias de la Vida
# ### <center> Bioinformatica
#     
# #### Estudiante: Luis Carlos Roa
# 
# #### Curso: GBI6G01_2022I
#     
# # <center> **Tarea N°6**
# # - Crear el modulo que se llame poblacionmendeliana.
# # - Guardar las 3 funciones de: 
# #  * Generacion de la poblacion.
# #  * Conteo de frecuencia de alelos.
# #  * Reproduccion de la poblacion en el modulo del poblacionmendeliana.
# # - Generar una explicación para cada función.
# # - Generar la poblacion 500 generaciones. 
# # - Calcular las proporciones de AA, Aa, aA, aa de todas las generaciones.
# # - Generar el repositorio tarea N°6 con un readme.
# # 
# # <center> **DESAROLLO DEL MÓDULO**

# In[10]:


# FUNCIÓN 1: Generación de población

import scipy # for random numbers

def build_population(N, p):
    """
    N = Tamaño de la población. Cada individuo tiene dos cromosomas.
    p = Probabilidad de presentar un alelo "A"
    1-p = Probabilidad de presentar un alelo "a"
    population = Lista de posibles duplas.
    
    """
    population = []
    for i in range(N):
        allele1 = "A"
        if scipy.random.rand() > p:
            allele1 = "a"
            allele2 = "A"
        if scipy.random.rand() > p:
            allele2 = "a"
        population.append((allele1, allele2))
    return population


# In[11]:


# FUNCIÓN 2. Conteo de frecuencia de alelos
def compute_frequencies(population):
    """ 
    Contar genotipos 
    Devolver diccionario de freciencias genotipicas
    
    """
    AA = population.count(("A", "A"))
    Aa = population.count(("A", "a"))
    aA = population.count(("a", "A"))
    aa = population.count(("a", "a"))
    return({"AA": AA, "aa": aa, "Aa": Aa, "aA": aA})


# In[12]:


# FUNCIÓN 3. Reproduccion de la poblacion en el modulo de poblacion mendeliana.

def reproduce_population(population):
    """
    Reproducir población y crear una nueva generación.
    Para cada uno de N nuevos descendientes:
    - elegir padres al azar.
    - descendencia recibe un cromosoma por cada uno de los padres.
    """
    new_generation = []
    N = len(population)
    for i in range(N):
        # random integer between 0 and N-1
        dad = scipy.random.randint(N)
        mom = scipy.random.randint(N)
        # which chromosome comes from mom
        chr_mom = scipy.random.randint(2)
        offspring = (population[mom][chr_mom], population[dad][1 - chr_mom])
        #if offspring == ("a", "a"): 
          #next()
        new_generation.append(offspring)
    return new_generation


# In[ ]:




