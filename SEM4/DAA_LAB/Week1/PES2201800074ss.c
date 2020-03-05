//Find the offset of the first occurrence of the key in an array of integers
//Return -1 in case of no occurrences of the key.
int searchFirstOccurrence(int arr[], int n, int key){
	int i=0;
	while (i<n){
		if (arr[i] == key){
			return i;
		}
		i++;
	}
	return -1;
}

//Find the offset of the last occurrence of the key in an array of integers
//Return -1 in case of no occurrences of the key.
int searchLastOccurrence(int arr[], int n, int key){
	int i=n-1;
	while (i>=0){
		if (arr[i] == key){
			return i;
		}
		i--;
	}
	return -1;
}

//Find the number of occurrences of the key in an array of integers
int numOccurrences(int arr[], int n, int key){
	int count=0;
	int i=0;
	while (i<n){
		if (arr[i] == key){
			count++;
		}
		i++;
	}
	return count;
}
