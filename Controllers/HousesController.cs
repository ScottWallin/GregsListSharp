namespace GregsList.Controllers;

[ApiController]
[Route("api/houses")]

public class HousesController : ControllerBase
{
  private readonly HousesService _housesService;
  public HousesController(HousesService housesService)
  {
    _housesService = housesService;
  }
  [HttpGet]
  public ActionResult<List<CreatedAtActionResult>> GetAllHouses()
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