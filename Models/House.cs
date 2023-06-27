namespace GregsList.Models;

public class House
{
  public int Id { get; set; }
  public int? Floors { get; set; }
  public int? Sqft { get; set; }
  public double? Price { get; set; }
  public double? Bathrooms { get; set; }
  public string Description { get; set; }
  public string Color { get; set; }
  public DateTime CreatedAt { get; set; }
  public DateTime UpdatedAt { get; set; }
}