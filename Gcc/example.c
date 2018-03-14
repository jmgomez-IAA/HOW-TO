#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/*
extern uint8_t prom_data[]    asm("_binary_prom_data_bin_start");
extern uint8_t prom_data_size[]  asm("_binary_prom_data_bin_size");
extern uint8_t prom_data_end[]  asm("_binary_prom_data_bin_end");
*/
extern char _binary_prom_data_bin_start;
extern char _binary_prom_data_bin_size;

const char* data = &_binary_prom_data_bin_start;
const size_t size = (size_t)((void*) & _binary_prom_data_bin_size);

int main(){
  
  int i;
  puts ("Execution of program");
  
  printf("FileSize 0x%x\n" , size);
  
  for (i= 0; i<size; ++ i){
    printf("0x%x\n" , data[i]);
    
  }
  
  return 0;
 
}