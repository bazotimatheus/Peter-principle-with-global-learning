#!/bin/bash

competences=(6 24)
strategies=(best worst random)
correlation_parameters=(0.2 0.8)
learning_coefficients=(0 0.02 0.03)

for strategy in "${strategies[@]}"; do
  for competence in "${competences[@]}"; do
    for correlation_parameter in "${correlation_parameters[@]}"; do
      for learning_coefficient in "${learning_coefficients[@]}"; do
        dir=$strategy"-skills_"$competence"-correlation_"$correlation_parameter"-learning_"$learning_coefficient

        mkdir $dir $dir/efficiency $dir/competence
      done
    done
  done
done
