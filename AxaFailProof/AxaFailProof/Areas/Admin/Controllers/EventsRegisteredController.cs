﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AxaFailProof.Models;
using AxaFailProof.ExcelUtilities;
using System.IO;

namespace AxaFailProof.Areas.Admin.Controllers
{
    [Authorize]
    public class EventsRegisteredController : Controller
    {
        private AxaFailProofContext db = new AxaFailProofContext();

        //
        // GET: /Admin/EventsRegistered/

        public ViewResult Index()
        {
            var eventsregistereds = db.EventsRegistereds.Include(e => e.Location);
            return View(eventsregistereds.ToList());
        }

        //
        // GET: /Admin/EventsRegistered/Details/5

        public ViewResult Details(int id)
        {
            EventsRegistered eventsregistered = db.EventsRegistereds.Find(id);
            return View(eventsregistered);
        }

        //
        // GET: /Admin/EventsRegistered/Create

        public ActionResult Create()
        {
            ViewBag.LocationID = new SelectList(db.Locations, "LocationID", "Location1");
            return View();
        } 

        //
        // POST: /Admin/EventsRegistered/Create

        [HttpPost]
        public ActionResult Create(EventsRegistered eventsregistered)
        {
            if (ModelState.IsValid)
            {
                eventsregistered.DateCreated = DateTime.Now;
                eventsregistered.Status = true;
                db.EventsRegistereds.Add(eventsregistered);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.LocationID = new SelectList(db.Locations, "LocationID", "Location1", eventsregistered.LocationID);
            return View(eventsregistered);
        }
        
        //
        // GET: /Admin/EventsRegistered/Edit/5
 
        public ActionResult Edit(int id)
        {
            EventsRegistered eventsregistered = db.EventsRegistereds.Find(id);
            ViewBag.LocationID = new SelectList(db.Locations, "LocationID", "Location1", eventsregistered.LocationID);
            return View(eventsregistered);
        }

        //
        // POST: /Admin/EventsRegistered/Edit/5

        [HttpPost]
        public ActionResult Edit(EventsRegistered eventsregistered)
        {
            if (ModelState.IsValid)
            {
                db.Entry(eventsregistered).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.LocationID = new SelectList(db.Locations, "LocationID", "Location1", eventsregistered.LocationID);
            return View(eventsregistered);
        }

        //
        // GET: /Admin/EventsRegistered/Delete/5
 
        public ActionResult Delete(int id)
        {
            EventsRegistered eventsregistered = db.EventsRegistereds.Find(id);
            return View(eventsregistered);
        }

        //
        // POST: /Admin/EventsRegistered/Delete/5

        //[HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            EventsRegistered eventsregistered = db.EventsRegistereds.Find(id);
            db.EventsRegistereds.Remove(eventsregistered);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Status(int id)
        {
            EventsRegistered eventsregistered = db.EventsRegistereds.Find(id);
            if (eventsregistered.Status == false)
            {
                eventsregistered.Status = true;
            }
            else
            {
                eventsregistered.Status = false;
            }
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public void DownloadExl() 
        {
            var newsletter = new DataTable();
            newsletter.Columns.Add(new DataColumn("FullName", Type.GetType("System.String")));
            newsletter.Columns.Add(new DataColumn("Location", Type.GetType("System.String")));
            newsletter.Columns.Add(new DataColumn("EventDate", Type.GetType("System.String")));
            newsletter.Columns.Add(new DataColumn("ContactNumber", Type.GetType("System.String")));
            newsletter.Columns.Add(new DataColumn("Email", Type.GetType("System.String")));
            newsletter.Columns.Add(new DataColumn("CardHolder", Type.GetType("System.String")));
            newsletter.Columns.Add(new DataColumn("DateCreated", Type.GetType("System.String")));

            var registerduser = db.EventsRegistereds.OrderByDescending(n => n.DateCreated);
            foreach (var item in registerduser)
            {
                object[] data = new Object[7];
                data[0] = item.FirstName + " " + item.MiddleName + " " + item.LastName;
                data[1] = item.LocationID;
                data[2] = item.EventDate.ToString("yyyy-MM-dd");
                data[3] = item.ContactNumber;
                data[4] = item.Email;
                data[5] = item.CardHolder;
                data[6] = item.DateCreated;
                newsletter.Rows.Add(data);
            }

            MemoryStream stream = ExcelUtility.GetExcel(newsletter);

            var filename = DateTime.Now + "_RegisteredUser.xlsx";
            var contenttype = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            Response.Clear();
            Response.ContentType = contenttype;
            Response.AddHeader("content-disposition", "attachment;filename=" + filename);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite(stream.ToArray());
            Response.End();
        }            

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}