using System;

namespace EfDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            // Change the following connection string value as required to connect to your SQL Server instance and DB
            var connectionString = "Server=(local);Database=EfDemo;Trusted_Connection=True;TrustServerCertificate=True;";
            Console.WriteLine("---------- Program started ----------");
            using (var context = new EfDemoDbContext(connectionString))
            {
                foreach (var product in context.Products)
                {
                    Console.WriteLine($"{product.Name} (#{product.Id}): {product.Desc}");
                }
            }
            Console.WriteLine("---------- Program Ended ----------");
        }
    }
}
