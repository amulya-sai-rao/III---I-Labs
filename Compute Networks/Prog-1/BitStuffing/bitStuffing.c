#include<stdio.h>
#include<string.h>

void main(){
	int n;
	printf("Enter frame length:");
	scanf("%d",&n);
	printf("Enter input frame (0's & 1's only):");
	int a[n],b[n];
	for(int i=0;i<n;i++){
		scanf("%d",&a[i]);
	}
	int i=0, count=1, j=0,k;
	while(i<n){
		if(a[i]==1){
			b[j]=a[i];
			for(k=i+1;a[k]==1 && k<n && count<5;k++){
				j++;
				b[j]=a[k];
				count++;
				if(count==5)
				{
					j++;
					b[j]=0;
				}
				i=k;
			}
		}
		else{
			b[j]=a[i];
		}
		i++;
		j++;
	}
	printf("After stuffing the frame is:");
	for(i=0;i<j;i++){
		printf("%d",b[i]);
	}
	printf("\n");
}
