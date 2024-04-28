Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
# WORKOUT-GENERATOR
- This application generates a strength training plan based on the users chosen training frequency (2x 3x)
- Based on the training frequency, the user will be asked to choose a few different exercises
- The user will be asked to input their 1RM for their chosen exercises (which will then calculate the 1RM) based on the given rep range (3~6reps)
- The program will then generate the users program for the next 6 weeks

Plan:
- A user can have many workout plans (one to many)
- A workout plan belongs to a user (one to one)
- A workout plan has many exercises (one to many)
- An exercise belongs to a workout plan (one to one)

Features to include:
1. As a user I can select my frequency of working out (2 or 3 times a week)
2. As a user I can select or enter my choice of exercise
3. As a user I can input the 1RM calcuations into the exercise
4. As a user I can view my workout plan for the next coming weeks (including the sets/ reps/ weights for the week)

More difficult features to implement:
1. As a user, I can go through my workout and enter the sets, reps done for each lift
3. As a user, I can sync my workout plan into my calendar
4. As a user, I can edit my workout, and edit the date for the next workout
5. As a user, I can view my past workouts
6. 5. As a user I can set the weights available
