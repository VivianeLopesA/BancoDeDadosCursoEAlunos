using Microsoft.AspNetCore.Mvc;

namespace CursoEAlunos.Controllers
{
    public class CursoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
