import java.util.Scanner;

public class edad {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Ingresa tu nombre: ");
        String nombre = sc.nextLine();

        System.out.print("Ingresa tu año de nacimiento: ");
        int anio = sc.nextInt();

        int edad = 2026 - anio;

        System.out.println("Hola " + nombre + ", tu edad es: " + edad + " años.");
    }
}