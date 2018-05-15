<%@ WebHandler Language="C#" Class="Handler" %>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.Script.Serialization;
using System.Data;
using System.Data.OleDb;
using System.IO;
using WebScada;

public class Handler : IHttpHandler, IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        string param = "";
        if (context.Request.HttpMethod == "GET")
        {
            param = context.Request["params"];
        }
        else if (context.Request.HttpMethod == "POST")
        {
            param = context.Request["params"];
        }
        if (param == null) param = "";
        context.Response.StatusCode = 200;
        context.Response.ContentType = "application/json";
        string result = GetFormDatabase(param);
        context.Response.Write(result);
    }

    //用于httpserver 的数据库查询接口 返回json格式数据
    private string GetFormDatabase(string param)
    {
        string path = HttpContext.Current.Server.MapPath("~/data");
        string json = "";
        string[] CanShu = { "", "" };	//为了判断命令，分解param 参数。
        string sjk_m;		//传递数据库名

        if (param.IndexOf('_') == -1)
        {
            sjk_m = param;		//传递数据库名
        }
        else
        {
            CanShu = param.Split(new System.Char[] { '_' });	//分解param 参数,分段
            sjk_m = CanShu[1];		//数据库名   
            //	sjk_m = CanShu[2];		//数据库名 	           	
        }

        List<EasyUiTree> tree = new List<EasyUiTree>();
        List<EasyUiChildTree> tree2 = new List<EasyUiChildTree>();
        using (System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection())
        {
            try
            {

                path = Path.Combine(path, sjk_m);
                conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
                conn.Open();
                OleDbCommand cmd = conn.CreateCommand();
                if (CanShu[0] == "s")
                {
                    cmd.CommandText = "Select [ID],[一级],[二级],[三级],[设备ID],[备注] from [查询表] where [三级] like " + "'%" + CanShu[2] + "%'";
                }
                else
                {
                    cmd.CommandText = "Select [ID],[一级],[二级],[三级],[设备ID],[备注] from [查询表]";
                }

                OleDbDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    AddTree2(tree, tree2, reader["ID"].ToString(), reader["一级"].ToString(), reader["二级"].ToString(), reader["三级"].ToString(), reader["设备ID"].ToString(), reader["备注"].ToString(), CanShu[0]);
                }
                reader.Close();

                JavaScriptSerializer jar = new JavaScriptSerializer();
                json = jar.Serialize(tree);

            }
            catch (Exception)
            {
                //MessageBox.Show(ex.Message);
            }
        }
        return json;
    }


    private static EasyUiTree GetNode(List<EasyUiTree> tree, string group)
    {
        foreach (EasyUiTree node in tree)
        {
            if (node.text == group)
            {
                return node;
            }

        }
        EasyUiTree nodex = new EasyUiTree() { text = group };
        tree.Add(nodex);
        return nodex;
    }

    class EasyUiTree
    {
        public string text = "";
        public string JiBei = "1";
        public string iconCls = "";//icon-save
        public string state = "open"; //open
        public List<EasyUiChildTree> children = new List<EasyUiChildTree>();
    }

    class EasyUiChildTree
    {
        public string id = "";
        public string text = "";
        public string JiBei = "";
        public string iconCls = " ";//icon-save
        public string state = "closed"; //open
        public List<Attribute> children = new List<Attribute>();

    }

    class Attribute
    {
        public string id = "";
        public string text = "";
        public string JiBei = "";
        public string TongDao = "";
        public string iconCls = "icon-search";  //icon-save            
        public string url = "";
    }

    private static EasyUiChildTree GetChild(List<EasyUiChildTree> tree2, string group)
    {
        var ID = 2000;
        foreach (EasyUiChildTree node in tree2)
        {
            if (node.text == group)
            {
                return node;
            }
            else
            {
                ID = Convert.ToInt16(node.id);
            }
        }
        ID++;
        EasyUiChildTree nodex = new EasyUiChildTree() { id = ID.ToString(), text = group, JiBei = "2" };
        tree2.Add(nodex);
        return nodex;
    }


    private static void AddTree2(List<EasyUiTree> tree, List<EasyUiChildTree> tree2, string ID, string group, string xj, string devname, string devid, string tongdao, string order)
    {
        string old_xj = "";
        string new_xj = "";

        foreach (EasyUiChildTree tr_node in tree2)
        {
            old_xj = tr_node.text;
        }

        EasyUiChildTree child = GetChild(tree2, xj);   //设置2级菜单
        Attribute a = new Attribute { id = ID, text = devname, url = devid, JiBei = "3", TongDao = tongdao };

        if (order == "3")//通过命令设置图标
        {
            child.iconCls = "icon-search";
            a.iconCls = "icon-search2";
        }
        child.children.Add(a);

        EasyUiTree node = GetNode(tree, group);
        foreach (EasyUiChildTree tr_node in tree2)
        {
            new_xj = tr_node.text;
        }
        if (old_xj != new_xj)
        {
            node.children.Add(child);

        }
    }


    public bool IsReusable
    {
        get { return false; }
    }
}