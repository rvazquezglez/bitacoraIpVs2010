using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BitacoraIp.Models;

namespace BitacoraIp.Controllers
{
    public class tb_bit_usuarioController : Controller
    {
        private bdd_bitacora_ipEntities db = new bdd_bitacora_ipEntities();

        //
        // GET: /tb_bit_usuario/

        public ActionResult Index()
        {
            var tb_bit_usuario = db.tb_bit_usuario.Include(t => t.tb_bit_cat_area).Include(t => t.tb_bit_cat_dga).Include(t => t.tb_bit_cat_empresa).Include(t => t.tb_bit_cat_piso).Include(t => t.tb_bit_cat_regional);
            return View(tb_bit_usuario.ToList());
        }

        //
        // GET: /tb_bit_usuario/Details/5

        public ActionResult Details(int id = 0)
        {
            tb_bit_usuario tb_bit_usuario = db.tb_bit_usuario.Find(id);
            if (tb_bit_usuario == null)
            {
                return HttpNotFound();
            }
            return View(tb_bit_usuario);
        }

        //
        // GET: /tb_bit_usuario/Create

        public ActionResult Create()
        {
            ViewBag.fk_cve_area = new SelectList(db.tb_bit_cat_area, "pk_cve_area", "des_area");
            ViewBag.fk_cve_dga = new SelectList(db.tb_bit_cat_dga, "pk_cve_dga", "des_dga");
            ViewBag.fk_cve_empresa = new SelectList(db.tb_bit_cat_empresa, "pk_cve_empresa", "des_empresa");
            ViewBag.fk_cve_piso = new SelectList(db.tb_bit_cat_piso, "pk_cve_piso", "des_piso");
            ViewBag.fk_cve_regional = new SelectList(db.tb_bit_cat_regional, "pk_cve_regional", "des_regional");
            return View();
        }

        //
        // POST: /tb_bit_usuario/Create

        [HttpPost]
        public ActionResult Create(tb_bit_usuario tb_bit_usuario)
        {
            if (ModelState.IsValid)
            {
                db.tb_bit_usuario.Add(tb_bit_usuario);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.fk_cve_area = new SelectList(db.tb_bit_cat_area, "pk_cve_area", "des_area", tb_bit_usuario.fk_cve_area);
            ViewBag.fk_cve_dga = new SelectList(db.tb_bit_cat_dga, "pk_cve_dga", "des_dga", tb_bit_usuario.fk_cve_dga);
            ViewBag.fk_cve_empresa = new SelectList(db.tb_bit_cat_empresa, "pk_cve_empresa", "des_empresa", tb_bit_usuario.fk_cve_empresa);
            ViewBag.fk_cve_piso = new SelectList(db.tb_bit_cat_piso, "pk_cve_piso", "des_piso", tb_bit_usuario.fk_cve_piso);
            ViewBag.fk_cve_regional = new SelectList(db.tb_bit_cat_regional, "pk_cve_regional", "des_regional", tb_bit_usuario.fk_cve_regional);
            return View(tb_bit_usuario);
        }

        //
        // GET: /tb_bit_usuario/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tb_bit_usuario tb_bit_usuario = db.tb_bit_usuario.Find(id);
            if (tb_bit_usuario == null)
            {
                return HttpNotFound();
            }
            ViewBag.fk_cve_area = new SelectList(db.tb_bit_cat_area, "pk_cve_area", "des_area", tb_bit_usuario.fk_cve_area);
            ViewBag.fk_cve_dga = new SelectList(db.tb_bit_cat_dga, "pk_cve_dga", "des_dga", tb_bit_usuario.fk_cve_dga);
            ViewBag.fk_cve_empresa = new SelectList(db.tb_bit_cat_empresa, "pk_cve_empresa", "des_empresa", tb_bit_usuario.fk_cve_empresa);
            ViewBag.fk_cve_piso = new SelectList(db.tb_bit_cat_piso, "pk_cve_piso", "des_piso", tb_bit_usuario.fk_cve_piso);
            ViewBag.fk_cve_regional = new SelectList(db.tb_bit_cat_regional, "pk_cve_regional", "des_regional", tb_bit_usuario.fk_cve_regional);
            return View(tb_bit_usuario);
        }

        //
        // POST: /tb_bit_usuario/Edit/5

        [HttpPost]
        public ActionResult Edit(tb_bit_usuario tb_bit_usuario)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tb_bit_usuario).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.fk_cve_area = new SelectList(db.tb_bit_cat_area, "pk_cve_area", "des_area", tb_bit_usuario.fk_cve_area);
            ViewBag.fk_cve_dga = new SelectList(db.tb_bit_cat_dga, "pk_cve_dga", "des_dga", tb_bit_usuario.fk_cve_dga);
            ViewBag.fk_cve_empresa = new SelectList(db.tb_bit_cat_empresa, "pk_cve_empresa", "des_empresa", tb_bit_usuario.fk_cve_empresa);
            ViewBag.fk_cve_piso = new SelectList(db.tb_bit_cat_piso, "pk_cve_piso", "des_piso", tb_bit_usuario.fk_cve_piso);
            ViewBag.fk_cve_regional = new SelectList(db.tb_bit_cat_regional, "pk_cve_regional", "des_regional", tb_bit_usuario.fk_cve_regional);
            return View(tb_bit_usuario);
        }

        //
        // GET: /tb_bit_usuario/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tb_bit_usuario tb_bit_usuario = db.tb_bit_usuario.Find(id);
            if (tb_bit_usuario == null)
            {
                return HttpNotFound();
            }
            return View(tb_bit_usuario);
        }

        //
        // POST: /tb_bit_usuario/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tb_bit_usuario tb_bit_usuario = db.tb_bit_usuario.Find(id);
            tb_bit_usuario.fec_baja = DateTime.Now;
            db.Entry(tb_bit_usuario).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}