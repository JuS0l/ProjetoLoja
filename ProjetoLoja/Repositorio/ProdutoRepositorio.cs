using MySql.Data.MySqlClient;
using ProjetoLoja.Models;
using Dapper;

namespace ProjetoLoja.Repositorio
{

    public class ProdutoRepositorio
    {
        //verificando a string de conexão do appsettings.json
        private readonly string _connectionString;

        public ProdutoRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }
        //Criando um método e fazendo a sincronização com o banco de dados
        public async Task<IEnumerable<Produto>> TodosProdutos()
        {
            using var connection = new MySqlConnection(_connectionString);
            var sql = "SELECT Id, Nome, Descricao, Preco, ImageUrl, Estoque FROM Produto";
            return await connection.QueryAsync<Produto>(sql);
        }
    }
}
