namespace GregsList.Repositories;

public class HousesRepository
{
  private readonly IDbConnection _db;
  public HousesRepository(IDbConnection db)
  {
    _db = db;
  }
  internal List<House> GetAllHouses()
  {
    string sql = "SELECT * FROM houses ORDER BY createdAt DESC;";
    List<House> houses = _db.Query<House>(sql).ToList();
    return houses;
  }
}