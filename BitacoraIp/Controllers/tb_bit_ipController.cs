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
    public class tb_bit_ipController : Controller
    {
        private bdd_bitacora_ipEntities db = new bdd_bitacora_ipEntities();

        //
        // GET: /tb_bit_ip/

        public ActionResult Index()
        {
            var tb_bit_ip = db.tb_bit_ip.Include(t => t.tb_bit_cat_equipo_computo_marca).Include(t => t.tb_bit_cat_equipo_telefono_modelo).Include(t => t.tb_bit_cat_switch).Include(t => t.tb_bit_cat_tipo_equipo).Include(t => t.tb_bit_cat_wireless).Include(t => t.tb_bit_usuario).Include(t => t.tb_bt_cat_equipo_computo_modelo);
            return View(tb_bit_ip.ToList());
        }

        //
        // GET: /tb_bit_ip/Details/5

        public ActionResult Details(string id = null)
        {
            tb_bit_ip tb_bit_ip = db.tb_bit_ip.Find(id);
            if (tb_bit_ip == null)
            {
                return HttpNotFound();
            }
            return View(tb_bit_ip);
        }

        //
        // GET: /tb_bit_ip/Create

        public ActionResult Create()
        {
            ViewBag.fk_cve_equipo_computo_marca = new SelectList(db.tb_bit_cat_equipo_computo_marca, "pk_cve_equipo_computo_marca", "des_equipo_computo_marca");
            ViewBag.fk_cve_equipo_telefono_modelo = new SelectList(db.tb_bit_cat_equipo_telefono_modelo, "pk_cve_equipo_telefono_modelo", "des_equipo_telefono_modelo");
            ViewBag.pfk_cve_switch = new SelectList(db.tb_bit_cat_switch, "pk_cve_switch", "des_cve_switch");
            ViewBag.fk_cve_tipo_equipo = new SelectList(db.tb_bit_cat_tipo_equipo, "pk_cve_tipo_equipo", "des_tipo_equipo");
            ViewBag.fk_cve_mac_wireless = new SelectList(db.tb_bit_cat_wireless, "pk_cve_wir", "des_wir");
            ViewBag.pfk_cve_usuario = new SelectList(db.tb_bit_usuario, "pk_cve_usuario", "nom_user_name");
            ViewBag.fk_cve_equipo_computo_modelo = new SelectList(db.tb_bt_cat_equipo_computo_modelo, "pk_cve_equipo_computo_modelo", "des_equipo_computo_modelo");
            return View();
        }

        //
        // POST: /tb_bit_ip/Create

        [HttpPost]
        public ActionResult Create(tb_bit_ip tb_bit_ip)
        {
            if (ModelState.IsValid)
            {
                db.tb_bit_ip.Add(tb_bit_ip);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.fk_cve_equipo_computo_marca = new SelectList(db.tb_bit_cat_equipo_computo_marca, "pk_cve_equipo_computo_marca", "des_equipo_computo_marca", tb_bit_ip.fk_cve_equipo_computo_marca);
            ViewBag.fk_cve_equipo_telefono_modelo = new SelectList(db.tb_bit_cat_equipo_telefono_modelo, "pk_cve_equipo_telefono_modelo", "des_equipo_telefono_modelo", tb_bit_ip.fk_cve_equipo_telefono_modelo);
            ViewBag.pfk_cve_switch = new SelectList(db.tb_bit_cat_switch, "pk_cve_switch", "des_cve_switch", tb_bit_ip.pfk_cve_switch);
            ViewBag.fk_cve_tipo_equipo = new SelectList(db.tb_bit_cat_tipo_equipo, "pk_cve_tipo_equipo", "des_tipo_equipo", tb_bit_ip.fk_cve_tipo_equipo);
            ViewBag.fk_cve_mac_wireless = new SelectList(db.tb_bit_cat_wireless, "pk_cve_wir", "des_wir", tb_bit_ip.fk_cve_mac_wireless);
            ViewBag.pfk_cve_usuario = new SelectList(db.tb_bit_usuario, "pk_cve_usuario", "nom_user_name", tb_bit_ip.pfk_cve_usuario);
            ViewBag.fk_cve_equipo_computo_modelo = new SelectList(db.tb_bt_cat_equipo_computo_modelo, "pk_cve_equipo_computo_modelo", "des_equipo_computo_modelo", tb_bit_ip.fk_cve_equipo_computo_modelo);
            return View(tb_bit_ip);
        }

        //
        // GET: /tb_bit_ip/Edit/5

        public ActionResult Edit(string id = null)
        {
            tb_bit_ip tb_bit_ip = db.tb_bit_ip.Find(id);
            if (tb_bit_ip == null)
            {
                return HttpNotFound();
            }
            ViewBag.fk_cve_equipo_computo_marca = new SelectList(db.tb_bit_cat_equipo_computo_marca, "pk_cve_equipo_computo_marca", "des_equipo_computo_marca", tb_bit_ip.fk_cve_equipo_computo_marca);
            ViewBag.fk_cve_equipo_telefono_modelo = new SelectList(db.tb_bit_cat_equipo_telefono_modelo, "pk_cve_equipo_telefono_modelo", "des_equipo_telefono_modelo", tb_bit_ip.fk_cve_equipo_telefono_modelo);
            ViewBag.pfk_cve_switch = new SelectList(db.tb_bit_cat_switch, "pk_cve_switch", "des_cve_switch", tb_bit_ip.pfk_cve_switch);
            ViewBag.fk_cve_tipo_equipo = new SelectList(db.tb_bit_cat_tipo_equipo, "pk_cve_tipo_equipo", "des_tipo_equipo", tb_bit_ip.fk_cve_tipo_equipo);
            ViewBag.fk_cve_mac_wireless = new SelectList(db.tb_bit_cat_wireless, "pk_cve_wir", "des_wir", tb_bit_ip.fk_cve_mac_wireless);
            ViewBag.pfk_cve_usuario = new SelectList(db.tb_bit_usuario, "pk_cve_usuario", "nom_user_name", tb_bit_ip.pfk_cve_usuario);
            ViewBag.fk_cve_equipo_computo_modelo = new SelectList(db.tb_bt_cat_equipo_computo_modelo, "pk_cve_equipo_computo_modelo", "des_equipo_computo_modelo", tb_bit_ip.fk_cve_equipo_computo_modelo);
            return View(tb_bit_ip);
        }

        //
        // POST: /tb_bit_ip/Edit/5

        [HttpPost]
        public ActionResult Edit(tb_bit_ip tb_bit_ip)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tb_bit_ip).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.fk_cve_equipo_computo_marca = new SelectList(db.tb_bit_cat_equipo_computo_marca, "pk_cve_equipo_computo_marca", "des_equipo_computo_marca", tb_bit_ip.fk_cve_equipo_computo_marca);
            ViewBag.fk_cve_equipo_telefono_modelo = new SelectList(db.tb_bit_cat_equipo_telefono_modelo, "pk_cve_equipo_telefono_modelo", "des_equipo_telefono_modelo", tb_bit_ip.fk_cve_equipo_telefono_modelo);
            ViewBag.pfk_cve_switch = new SelectList(db.tb_bit_cat_switch, "pk_cve_switch", "des_cve_switch", tb_bit_ip.pfk_cve_switch);
            ViewBag.fk_cve_tipo_equipo = new SelectList(db.tb_bit_cat_tipo_equipo, "pk_cve_tipo_equipo", "des_tipo_equipo", tb_bit_ip.fk_cve_tipo_equipo);
            ViewBag.fk_cve_mac_wireless = new SelectList(db.tb_bit_cat_wireless, "pk_cve_wir", "des_wir", tb_bit_ip.fk_cve_mac_wireless);
            ViewBag.pfk_cve_usuario = new SelectList(db.tb_bit_usuario, "pk_cve_usuario", "nom_user_name", tb_bit_ip.pfk_cve_usuario);
            ViewBag.fk_cve_equipo_computo_modelo = new SelectList(db.tb_bt_cat_equipo_computo_modelo, "pk_cve_equipo_computo_modelo", "des_equipo_computo_modelo", tb_bit_ip.fk_cve_equipo_computo_modelo);
            return View(tb_bit_ip);
        }

        //
        // GET: /tb_bit_ip/Delete/5

        public ActionResult Delete(string id = null)
        {
            tb_bit_ip tb_bit_ip = db.tb_bit_ip.Find(id);
            if (tb_bit_ip == null)
            {
                return HttpNotFound();
            }
            return View(tb_bit_ip);
        }

        //
        // POST: /tb_bit_ip/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            tb_bit_ip tb_bit_ip = db.tb_bit_ip.Find(id);
            db.tb_bit_ip.Remove(tb_bit_ip);
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