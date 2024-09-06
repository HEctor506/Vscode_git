#include <iostream>
#include <ctime>
#include <vector>
#include <chrono>

//1. Ingresar 10 valores por teclado. Presentar la suma y promedio
int main()
{
    auto start = std::chrono::high_resolution_clock::now();

    double sum= 0, promedio = 0;
    int i = 1, num;
    std::cout << "Ingrese 10 valores por teclado"<<'\n';
    while(i <= 10){
        std::cin >> num;
        sum+=num;
        i++;
    }
    std::cout << "La suma es: "<<sum<<std::endl;
    promedio = sum/10;
    std::cout<< "El promedio es: "<<promedio<<std::endl;

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> execution_time = end - start;
    std::cout << "Tiempo de ejecución: " << execution_time.count() << " segundos" << std::endl;

    //TIEMPO DE EJECUCION: 9.02803 segundos
    
    return 0;
} 

/*
2. Generar 500 valores aleatorios entre 50 y 100. Presente cuantos valores
   pares y cuántos impares fueron generados
*/

int main()
{
    auto start = std::chrono::high_resolution_clock::now();

    int numero, pares = 0, impares = 0;
    srand(time(NULL)); // Inicializa la semilla para números aleatorios

    for(int i=1; i<=500; i++){
        numero = (rand()%51)+50;
        (numero % 2 == 1) ? impares++ : pares++;
    }
    std::cout << "FUERON GENERADOS "<<pares<<" PARES y "<<impares<<" IMPARES"<< std::endl;

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> execution_time = end - start;
    std::cout << "Tiempo de ejecución: " << execution_time.count() << " segundos" << std::endl;

    //TIEMPO DE EJECUCION: 6.6407e-05 segundos
    return 0;
}
/*
rand() % 51 genera un número entre 0 y 50 (51 posibles valores).
Al sumarle 50, el rango cambia a 50-100.
*/


/*
3. Genere 2 arreglos paralelos que representen las sucursales de una empresa
   y sus ventas. Existen 25 sucursales en la empresa. Presente el promedio de
   ventas, así como las sucursales con ventas mayores al promedio.
*/
typedef std::string text_t;

int main()
{
    auto start = std::chrono::high_resolution_clock::now();

    srand(time(NULL));
    text_t name = "Sucursal ";
    int suma = 0;
    double venta, promedio;
    std::vector<text_t> sucursales;
    std::vector<double> ventas;
    
    std::cout << "------------START------------"<<'\n';
    for(int i=0; i<25; i++){
        venta = (rand() % 9001) + 1000;
        sucursales.push_back(name + std::to_string(i)); 
        ventas.push_back(venta);
        suma+=ventas.at(i); //sumo el nuevo valor
    }
    promedio = suma/ventas.size();
    std::cout<<"Promedio: "<<promedio << '\n';
    std::cout<< "Ventas mayores al promedio: "<<'\n';

    for(int i=0; i<ventas.size(); i++){
        if(ventas.at(i) > promedio){
            std::cout <<sucursales.at(i)<<" : "<<ventas.at(i)<<'\n';
        }
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> execution_time = end - start;
    std::cout << "Tiempo de ejecución: " << execution_time.count() << " segundos" << std::endl;

    //TIEMPO DE EJECUCION: 0.0004574 segundos
    std::cout << "-----------------------------"<<'\n';
    return 0;
}
