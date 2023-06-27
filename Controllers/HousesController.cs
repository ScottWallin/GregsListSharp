using GregsList.Services;

namespace GregsList.Controllers;

[ApiController]
[Route("api/houses")]

public class HousesController : ControllerBase
{
  private readonly HousesService _housesService;

  [HttpGet]
  public ActionResult<List<House>> GetAllHouses()
  {
    try
    {
      List<House> houses = _housesService.GetAllHouses();
      return Ok(houses);
    }
    catch (Exception e)
    {
      return BadRequest(e.Message);
    }
  }
}