using Microsoft.AspNetCore.Mvc;

namespace CursoEAlunos.Controllers
{
    public class AlunoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
