#include <stdio.h>
#include <stdlib.h>

typedef struct node{
    int data;
    struct node *left;
    struct node *right;
} node;

void insert(node *root, int input){
    if (root){
        
    }
    else{
        node* new = malloc()
    }
}

int level(node *root){
    if (root){
        if (root->left){
            return level(root->left) + 1;
        }
        if (root->right){
            return level(root->right) + 1;
        }
    }
}

int main(){
    printf("Hello, BST.\n");
    return 0;
}
