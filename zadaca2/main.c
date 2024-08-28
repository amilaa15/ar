#include <stdio.h>
#include <stdint.h>

double mymax(double start, const double* nums, uint32_t size); 
/* { */
/* for (int i = 0; i < size; ++i) { */
/* if (nums[i] > start) */
/* start = nums[i]; */
/* } */
/* return start; */
/* } */


int main(int argc, char const* argv[]) {
const double nums[] = {1., 5.7, 9.4, 14.8, 7.1, 8.2, 10.5};
printf("MyMax: %f\n", mymax(nums[0], nums, 7));
return 0;
}
