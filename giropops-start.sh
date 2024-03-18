#!/bin/sh 

# Inicia o servidor Redis em segundo plano
redis-server & flask run --host=0.0.0.0



