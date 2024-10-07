# Movie Recommendation System

## Project Overview
The goal of this project is to develop a Recommendation System for movies based on both the characteristics of the films and user ratings. We utilize a dataset containing movie metadata and user ratings to achieve this.

## Datasets
- **[movies_metadata.csv](files/movies_metadata.csv)**: Contains movie features such as genre, director, actors, and keywords from IMDb.
- **ratings.csv**: Includes user ratings, split into **[training](files/train_ratings.csv)** and **[testing](files/test_ratings.csv)** datasets.

## Prolog Files we created
- **[movie_metadata_rules.pl](files/find_similar.pl)**: This Prolog code defines a variety of predicates to compare different attributes between two movies, such as genre, director, plot keywords, actors, production details, and more. Each predicate looks for matches or similarities in these attributes between the two movies while ensuring that the movies are distinct.
- **[ratings.csv](files/find_similar.pl)**: This Prolog file encapsulates rules for determining the similarity between two movies based on various factors, using the rules we created in the movie_metadata_rules.pl file.

## Implementation Breakdown

### Part 1: Knowledge Base Construction
This is a preprocessing step for the recommender. Initially, we build a knowledge base in Prolog from the `movies_metadata.csv` file. Then we developed Prolog rules to find movies based on similarities, such as common themes, directors, plots, actors, language, and production country.

### Part 2: Recommendation System 
Generate recommendations based on movies with similar characteristics. We implemented queries that return similar movies on a scale from 1 to 5. The recommendated movies are sorted from the most to the least similar.

### Part 3: User Preference-Based Recommendations
Enhance the recommendation system by incorporating user ratings from the `ratings.csv` dataset.

**Implementation Steps**:

1. **Data Utilization**:
   - Load the user ratings from `train_ratings.csv` to understand user preferences.
  
2. **Score Assignment**:
   - Each movie starts with an initial score of 0.
   - For every movie rated by a user, find similar movies based on the knowledge base created in Part 1.
   - Update the score of each similar movie based on:
     - The similarity score between the movies.
     - The rating given by the user (e.g., higher ratings contribute more to the score).

3. **Recommendation Mechanism**:
   - After calculating the scores for similar movies, determine if a movie should be recommended to the user.
   - A movie is recommended if its score exceeds a predefined threshold (e.g., rating > 3).

4. **Testing**:
   - Evaluate the system using the `test_ratings.csv` file, which contains user ratings for other movies.
   - For each movie, predict whether it should be recommended (output 1) or not (output 0).

5. **Performance Evaluation**:
   - Measure the effectiveness of the recommendation system using the following metrics:
     - **Precision**: The proportion of recommended movies that were actually liked (rated > 3).
     - **Recall**: The proportion of liked movies that were correctly recommended.
     - **F1 Score**: The harmonic mean of precision and recall, providing a balance between the two.

This part of the project focuses on creating a more personalized recommendation experience by leveraging user ratings and improving the overall accuracy of the recommendations provided by the system.
