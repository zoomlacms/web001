using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Text;

public partial class Print_Shopping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string sException = null;
        string sRslt = null;
        WebResponse oWebRps = null;
        WebRequest oWebRqst = WebRequest.Create(Request["url"].Replace("$", "&"));
        oWebRqst.Timeout = 150000;
        try { oWebRps = oWebRqst.GetResponse(); }
        catch (WebException f)
        {
            sException = f.Message.ToString();
            throw new Exception(sException);
        }
        catch (Exception f)
        {
            sException = f.ToString();
            throw new Exception(sException);
        }
        finally
        {
            if (oWebRps != null)
            {
                StreamReader oStreamRd = new StreamReader(oWebRps.GetResponseStream(), Encoding.GetEncoding("GB2312"));
                sRslt = oStreamRd.ReadToEnd();
                oStreamRd.Close();
                oWebRps.Close();
            }
        }
        sRslt.IndexOf("<head>");
        sRslt.IndexOf("</head>");
        //sRslt.Remove(sRslt.IndexOf("<head>")+6, sRslt.IndexOf("<head>") - sRslt.IndexOf("</head>"));
        Response.Write(sRslt.Remove(sRslt.IndexOf("<head>"),8 + sRslt.IndexOf("</head>") - sRslt.IndexOf("<head>")));
    }
}