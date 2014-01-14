using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Web.Helpers;
using System.Net.Mail;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Configuration;
using System.Net;
using AxaFailProof.Models;
using System.Web.Helpers;
using System.Data;
using PagedList;

namespace AxaFailProof.Controllers
{
    public class HomeController : Controller
    {
        private AxaFailProofContext db = new AxaFailProofContext();
        private string ogimagepath = ConfigurationManager.AppSettings["TemplateOgImageHost"];

        // Home
        public ActionResult Index()
        {
            AxaViewModel model = new AxaViewModel();
            model.FotterBanner = db.Banners.Where(b => b.Position == "Footer" && b.Status == true).OrderByDescending(b => b.DateCreated).Take(1);
            model.Mushroom1 = db.Mushrooms.Find(4);
            model.Mushroom2 = db.Mushrooms.Find(2);
            model.FeaturedStory = db.Stories.Where(s => s.Status == true && s.Featured == true).Take(1);
            return View(model);
        }

        // FailProofYourHealth
        public ActionResult FailProofYourHealth(int id) 
        {
            AxaViewModel model = new AxaViewModel();

            model.StaticPage = db.StaticPages.Find(id);
            ViewBag.MetaTitle = model.StaticPage.Title;
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            if (model.StaticPage.MetaKeyWords != null)
            {
                ViewBag.MetaKeyWords = model.StaticPage.MetaKeyWords + ",AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            }
            else {
                ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            }
            if (model.StaticPage.MetaDescription != null){
                ViewBag.MetaDescription = model.StaticPage.MetaDescription;
            }
            else {
                ViewBag.MetaDescription = "";
            }
            return View(model);
        }

        public ActionResult RegisterEvent()
        {
            ViewBag.MetaTitle = "Join a Pocket Event";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.Locations = db.Locations.Where(l => l.Status == true).ToList();
            return View(model);
        }

        [HttpPost]
        public ActionResult RegisterEvent(EventsRegistered eventsregistered)
        {
            ViewBag.MetaTitle = "Join a Pocket Event";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            if (ModelState.IsValid)
            {
                eventsregistered.DateCreated = DateTime.Now;
                eventsregistered.Status = true;
                db.EventsRegistereds.Add(eventsregistered);
                db.SaveChanges();

                return RedirectToAction("RegisterEventStep3", new { id = eventsregistered.RegEventID });
            }
            return View();
        }

        [HttpPost]
        public string EventCheck(DateTime date,int locationid)
        {
            var eventcheck = db.EventsRegistereds.Where(e => e.EventDate == date && e.LocationID == locationid).Count();
            return eventcheck.ToString();
        }

        public ActionResult RegisterEventStep3(int id)
        {
            ViewBag.MetaTitle = "Join a Pocket Event";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.EventsRegistered = db.EventsRegistereds.Find(id);
            model.Locations = db.Locations.Where(l => l.Status == true).ToList();
            return View(model);
        }

        [HttpPost]
        public ActionResult RegisterEventStep3(int id, EventsRegistered eventsregistered)
        {
            ViewBag.MetaTitle = "Join a Pocket Event";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            if (!ReCaptcha.Validate(privateKey: "6Ldg9N0SAAAAAKcadBDB7nP7vH0iBprFdJgRmZ5I"))
            {
                return new RedirectResult(Url.Action("RegisterEventStep3", new { id = id }) + "#c");
            }
            if (eventsregistered.Terms == true)
            {
                if (ModelState.IsValid)
                {
                    db.Entry(eventsregistered).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("RegisterThankyou");
                }
            }

            AxaViewModel model = new AxaViewModel();
            model.EventsRegistered = db.EventsRegistereds.Find(id);
            model.Locations = db.Locations.Where(l => l.Status == true).ToList();
            return View(model);
        }

        public ActionResult RegisterThankyou() 
        {
            ViewBag.MetaTitle = "Thank you";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }

        // WhatIsFailProof
        public ActionResult WhatIsFailProof(int id)
        {
            AxaViewModel model = new AxaViewModel();

            model.StaticPage = db.StaticPages.Find(id);
            ViewBag.MetaTitle = model.StaticPage.Title;
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            if (model.StaticPage.MetaKeyWords != null)
            {
                ViewBag.MetaKeyWords = model.StaticPage.MetaKeyWords + ",AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            }
            else
            {
                ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            }
            if (model.StaticPage.MetaDescription != null)
            {
                ViewBag.MetaDescription = model.StaticPage.MetaDescription;
            }
            else
            {
                ViewBag.MetaDescription = "";
            }
            return View(model);
        }

        // Stories
        public ActionResult Archive(string month, string year)
        {
            ViewBag.MetaTitle = "Archive";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.Stories = db.Stories.Where(s => s.Status == true && s.TopicID > 0 && s.TopicID != 11).OrderByDescending(s => s.DateCreated).ToList();
            return View(model);
        }

        public ActionResult ArchiveByDate(int month, int year)
        {
            ViewBag.MetaTitle = "Archive";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.Stories = db.Stories.Where(s => s.Status == true && s.TopicID > 0 && s.TopicID != 11 && s.DateCreated.Value.Month == month && s.DateCreated.Value.Year == year).OrderByDescending(s => s.DateCreated).ToList();
            return View(model);
        }


        public ActionResult Story(int id)
        {
            AxaViewModel model = new AxaViewModel();
            model.StoryID = id;
            model.Story = db.Stories.Find(id);
            ViewBag.MetaTitle = model.Story.Title;
            ViewBag.OgImage = ogimagepath + model.Story.Image;
            if (model.Story.MetaKeyWords != null)
            {
                ViewBag.MetaKeyWords = model.Story.MetaKeyWords + ",AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            }
            else
            {
                ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            }
            if (model.Story.MetaDescription != null)
            {
                ViewBag.MetaDescription = model.Story.MetaDescription;
            }
            else
            {
                ViewBag.MetaDescription = "";
            }

            model.Comments = db.Comments.Where(c => c.StoryID == id && c.Status == true).OrderByDescending(s => s.DateCreated).ToList();

            // count total comments
            var TotalComments = db.Comments.Where(c => c.StoryID == id && c.Status == true).OrderByDescending(s => s.DateCreated).Count();
            Story story = db.Stories.Find(id);
            story.CommnetsCount = TotalComments;
            // save total count
            db.Entry(story).State = EntityState.Modified;
            db.SaveChanges();

            return View(model);
        }

        // MAKE AJAX POST
        [HttpPost]
        public string CommentForm(Comment comment)
        {
            if (ModelState.IsValid)
            {
                comment.DateCreated = DateTime.Now;
                comment.Status = false;
                db.Comments.Add(comment);
                db.SaveChanges();
                return "ok";
            }
            return "false";
        }

        public ActionResult CommentsThankyou()
        {
            ViewBag.MetaTitle = "Thank you";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }

        public ActionResult SubmitStoryLogin()
        {
            ViewBag.MetaTitle = "Submit your Story";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }


        public ActionResult SubmitStory()
        {
            ViewBag.MetaTitle = "Write your own story";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }

        [HttpPost]
        public ActionResult SubmitStory(Story story)
        {
            ViewBag.MetaTitle = "Write your own story";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            if (ModelState.IsValid)
            {
                // save image process
                var image = WebImage.GetImageFromRequest();
                if (image != null)
                {
                    var filename = Path.GetFileName(image.FileName);
                    var guid = Guid.NewGuid().ToString().Substring(0, 8);
                    image.Save(Path.Combine("~/Userfiles/images", guid + "-" + filename));
                    image.Resize(457, 385, true, true);
                    image.Save(Path.Combine("~/Userfiles/image_thumb", guid + "-" + filename));
                    image.Resize(398, 208, true, true);
                    image.Save(Path.Combine("~/Userfiles/og_images", guid + "-" + filename));

                    story.Image = Url.Content(guid + "-" + filename);
                }

                story.DateCreated = DateTime.Now;
                story.Status = false;
                story.Featured = false;
                story.CommnetsCount = 0;
                db.Stories.Add(story);
                db.SaveChanges();
                return RedirectToAction("StoryThankyou");
            }
            return View();
        }

        public ActionResult StoryThankyou()
        {
            ViewBag.MetaTitle = "Thank you";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }

        //public ActionResult Search(int? page)
        //{
        //    var pageNumber = page ?? 1;
        //    int pageSize = 3;

        //    ViewBag.MetaTitle = "Search by Topic";
        //    ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
        //    ViewBag.MetaDescription = "";
        //    ViewBag.OgImage = ogimagepath + "axa_og_image.png";

        //    AxaViewModel model = new AxaViewModel();
        //    model.SearchResults = db.Stories.Where(s => s.Status == true && s.TopicID > 0 && s.TopicID != 11).OrderByDescending(s => s.DateCreated).ToPagedList(pageNumber, pageSize);
        //    return View(model);
        //}

        public ActionResult Search()
        {
            ViewBag.MetaTitle = "Search by Topic";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.StoryDetail = db.Stories.Where(s => s.Status == true && s.TopicID > 0 && s.TopicID != 11).OrderByDescending(s => s.DateCreated).ToList();
            return View(model);
        }


        public ActionResult SearchTopic(int id)
        {
            ViewBag.MetaTitle = "Search by Topic";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.Stories = db.Stories.Where(s => s.Status == true && s.TopicID == id).OrderByDescending(s => s.DateCreated).ToList();
            return View(model);
        }

        [HttpPost]
        public ActionResult SearchTags(string SearchTags)
        {
            ViewBag.MetaTitle = "Search by Tags";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.Stories = db.Stories.Where(s => s.Status == true && s.Tags.Contains(SearchTags)).OrderByDescending(s => s.DateCreated).ToList();
            return View(model);
        }

        // Contact Us
        public ActionResult ContactUs()
        {
            ViewBag.MetaTitle = "Contact Us";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            AxaViewModel model = new AxaViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult ContactUs(ContactU contactus)
        {
            ViewBag.MetaTitle = "Contact Us";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            if (ModelState.IsValid)
            {
                contactus.DateCreated = DateTime.Now;
                db.ContactUs.Add(contactus);
                db.SaveChanges();
                SendMail(contactus);
                return RedirectToAction("ContactUsThankyou");
            }

            return View();
        }

        public ActionResult ContactUsThankyou()
        {
            ViewBag.MetaTitle = "Thank you";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }

        public ActionResult GoogleSearch()
        {
            ViewBag.MetaTitle = "Search";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }

        public ActionResult Statistics()
        {
            ViewBag.MetaTitle = "Statistics";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";

            AxaViewModel model = new AxaViewModel();
            model.Stories = db.Stories.Where(s => s.Status == true && s.TopicID == 11).ToList();
            return View(model);
        }

        private void SendMail(ContactU contactus)
        {
            MailMessage message = new MailMessage();
            message.Subject = "AXA Inquiry";
            string emailto = ConfigurationManager.AppSettings["emailto"];
            string emailcc = ConfigurationManager.AppSettings["emailcc"];
            message.From = new MailAddress(contactus.Email);
            message.To.Add(new MailAddress(emailto));
            message.CC.Add(new MailAddress(emailcc));
            message.Body = "Name : " + contactus.Name + "<br />";
            message.Body += "Email Address: " + contactus.Email + "<br />";
            message.Body += "Message: " + contactus.Message + "<br />";
            message.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            try
            {
                smtp.Send(message);
            }
            catch (Exception e) { }
        }

        public ActionResult NotFound()
        {
            ViewBag.MetaTitle = "Page not found";
            ViewBag.MetaKeyWords = "AXA Philippines,Life Insurance,AXA Health Solutions,It Can Happen To You,Health MaX,Health eXentials,Health Insurance,Health Plan,Health Benefits,Best Health Plan,Global Insurance Company,Critical Illness Cover,Daily Hospitalization Income,All In One Plan,All In One Health Plan,Additional Health Coverage,Additional HMO Coverage,Breast Cancer,Cancer,Lung Cancer,Cervical Cancer,Symptoms of Cancer,Health Illness,Stroke Symptoms,Heart Stroke,What Is Stroke,Cancer Chemotherapy,Symptoms Tuberculosis,Pulmonary Tuberculosis,Health Care,Philippine Health Insurance,Health Card";
            ViewBag.MetaDescription = "";
            ViewBag.OgImage = ogimagepath + "axa_og_image.png";
            return View();
        }


        [ChildActionOnly]
        public ActionResult Navigator() 
        {
            AxaViewModel model = new AxaViewModel();

            string _Action = ControllerContext.ParentActionViewContext.RouteData.GetRequiredString("action");
            switch (_Action) { 
                case "Index":
                    model.Banner = db.Banners.Where(b => b.Position == "Home" && b.Status == true).OrderByDescending(b => b.DateCreated).ToList();
                    ViewBag.Hselected = "current-menu-item";
                    break;
                case "FailProofYourHealth":
                    model.Banner = db.Banners.Where(b => b.Position == "Fail Proof your Health" && b.Status == true).Take(1);
                    ViewBag.Fselected = "current-menu-item";
                    break;
                case "RegisterEvent":
                    model.Banner = db.Banners.Where(b => b.Position == "Event" && b.Status == true).Take(1);
                    ViewBag.Fselected = "current-menu-item";
                    break;
                case "RegisterEventStep3":
                    model.Banner = db.Banners.Where(b => b.Position == "Event" && b.Status == true).Take(1);
                    ViewBag.Fselected = "current-menu-item";
                    break;
                case "RegisterThankyou":
                    model.Banner = db.Banners.Where(b => b.Position == "Event" && b.Status == true).Take(1);
                    ViewBag.Fselected = "current-menu-item";
                    break;
                case "WhatIsFailProof":
                    model.Banner = db.Banners.Where(b => b.Position == "What is Fail Proof" && b.Status == true).Take(1);
                    ViewBag.Wselected = "current-menu-item";
                    break;
                case "Archive":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "ArchiveByDate":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "Story":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "SubmitStory":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "SearchTopic":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "SearchTags":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "SubmitStoryLogin":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "StoryThankyou":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "Search":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "CommentsThankyou":
                    model.Banner = db.Banners.Where(b => b.Position == "Stories" && b.Status == true).Take(1);
                    ViewBag.Sselected = "current-menu-item";
                    break;
                case "ContactUs":
                    model.Banner = db.Banners.Where(b => b.Position == "Contact Us" && b.Status == true).Take(1);
                    ViewBag.Cselected = "current-menu-item";
                    break;
                case "ContactUsThankyou":
                    model.Banner = db.Banners.Where(b => b.Position == "Contact Us" && b.Status == true).Take(1);
                    ViewBag.Cselected = "current-menu-item";
                    break;
                case "GoogleSearch":
                    model.Banner = db.Banners.Where(b => b.Position == "Home" && b.Status == true).Take(1);
                    ViewBag.Hselected = "current-menu-item";
                    break;
                case "Statistics":
                    model.Banner = db.Banners.Where(b => b.Position == "Fail Proof your Health" && b.Status == true).Take(1);
                    ViewBag.Fselected = "current-menu-item";
                    break;
                case "NotFound":
                    model.Banner = db.Banners.Where(b => b.Position == "Home" && b.Status == true).Take(1);
                    ViewBag.Hselected = "current-menu-item";
                    break;
            }

            return PartialView("_Navigator", model);
        }

        [ChildActionOnly]
        public ActionResult Navigator2()
        {
            return PartialView("_Navigator2");
        }

        [ChildActionOnly]
        public ActionResult FooterHome()
        {
            AxaViewModel model = new AxaViewModel();
            model.FotterBanner = db.Banners.Where(b => b.Position == "Footer" && b.Status == true).OrderByDescending(b => b.DateCreated).Take(1);
            model.Mushroom3 = db.Mushrooms.Find(5);
            return PartialView("_FooterHome", model);
        }

        [ChildActionOnly]
        public ActionResult FooterMain()
        {
            AxaViewModel model = new AxaViewModel();
            model.Mushroom3 = db.Mushrooms.Find(5);
            return PartialView("_FooterMain", model);
        }

        [ChildActionOnly]
        public ActionResult ResentPosts()
        {
            AxaViewModel model = new AxaViewModel();
            model.ResentPost = db.Stories.Where(s => s.Status == true).OrderByDescending(s => s.DateCreated).Take(3);
            return PartialView("_ResentPosts", model);
        }

        [ChildActionOnly]
        public ActionResult TopicList()
        {
            AxaViewModel model = new AxaViewModel();
            model.Topics = db.Topics.Where(t => t.Status == true && t.TopicID != 11).OrderBy(t => t.Title).ToList();
            return PartialView("_TopicList", model);
        }

        [ChildActionOnly]
        public ActionResult CopyRight()
        {
            return PartialView("_CopyRight");
        }

        [ChildActionOnly]
        public ActionResult ArchiveList()
        {
            AxaViewModel model = new AxaViewModel();
            var recordlist = db.Stories.Where(s => s.TopicID != 11).GroupBy(s => new { s.DateCreated.Value.Year, s.DateCreated.Value.Month}).Select(s => s.FirstOrDefault()).ToList();
            model.DateArchive = recordlist;
            return PartialView("_ArchiveList", model);
        }

        [ChildActionOnly]
        public ActionResult SearchByTopicForm()
        {
            return PartialView("_SearchByTopicForm");
        }

    }
}
