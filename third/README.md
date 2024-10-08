# Music Genre Classification

## Project Overview
Implement simple machine learning algorithms to automatically classify music tracks into three genres (Electronic, Rock, and Rap) using datasets from Spotify.

### Features to Analyze
The features for classification include:
- Acousticness
- Danceability
- Energy
- Instrumentalness
- Liveness
- Speechiness

## Dataset
- **[third/music_df_processed.csv](music_df_processed.csv)** : this Spotify dataset contains many music tracks and various of their characteristics, some of which are listed above. We proceeded to manually split this dataset into a **train set** (70% of the data) and a **test set** (30% of the data).

## Part 1: Evaluation Functions
We developed functions to evaluate classifiers, focusing on accuracy, defined as:
\[ \text{accuracy} = \frac{\text{# correct predictions}}{\text{# total samples}} \]

## Part 2: K-Nearest Neighbors (KNN)
The implementation of the KNN algorithm for classification followed 3 steps:
1. Store the training data in memory.
2. Compare the input with the training data to find the k-nearest neighbors based on distance (Euclidean or cosine).
3. Classify a sample based on the majority class of the k-nearest neighbors.

We evaluated the classifier on the first 100 samples of the test set for different values of \(k\).

Additionally, we compared your implementation with the KNN algorithm from the `sklearn` library for performance and execution time.

## Part 3: Naive Bayes Algorithm
In this part we implemented the Naive Bayes classifier, assuming boolean features, by:
1. Converting continuous features into N bins.
2. Calculating the probability \(p(i|x)\) for classifying a feature vector \(x\).

We select the class that maximizes the above probability for classification.

## Part 4: Multi-Layer Perceptron (MLP)
We built a multi-layer neural network to classify music tracks:
1. Implement the MLP using only NumPy initially.
2. Use a library like `scikit-learn` for comparison after the initial implementation.

The MLP consists of layers that compute outputs using weights and activation functions:
- Forward function: Computes neuron outputs.
- Backward function: Updates weights based on prediction errors.

In this part, we structured the neural network, implemented its functionality, and compared the results with a library-based approach.
