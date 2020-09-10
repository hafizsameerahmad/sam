<%@ page title="" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="cat, App_Web_d5yn2pzd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Neighborhood</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="Default.aspx">Dashboard</a></li>
                                    <li><a href="home.aspx">Home</a></li>
                                    <li class="active">Category</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

      <div class="content">
            <div class="animated fadeIn">
                    <div class="alert alert-primary" role="alert" id="alert1" runat="server">
                                       <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label>
                                    </div>
          
                <div class="row" id="new1" runat="server">


                    <div class="col-lg-12" >
                        <div class="card">
                            <div class="card-header">
                                <strong>Category</strong> info
                            </div>
                            <div class="card-body card-block">
                                <div  class="form-horizontal">
                                      <div class="row form-group">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Status</label></div>
                                        <div class="col-12 col-md-6">
                                            <select name="select" id="ddactive" runat ="server" class="form-control">
                                                <option value="1">Active</option>
                                                <option value="0">Inactive</option>
                                              
                                            </select>
                                        </div>
                                    </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Home (Type)</label></div>
                                        <div class="col-12 col-md-6">
    <asp:DropDownList ID="ddhome" runat="server" CssClass="form-control" AppendDataBoundItems="True" >

    </asp:DropDownList>
                                           
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Name</label></div>
                                        <div class="col-12 col-md-6"><input type="text" id="txtname" runat="server" name="text-input" placeholder="Please enter name" class="form-control" maxlength="50" /><%--<small class="form-text text-muted">Name in English</small>--%></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="email-input" class=" form-control-label">Description</label></div>
                                        <div class="col-12 col-md-6"><input type="text" id="txtdesc" runat="server" name="text-input" placeholder="Short note (Optional)" class="form-control" maxlength="50" /><%--<small class="help-block form-text">Name in Arabic</small>--%></div>
                                    </div>
                                  
                                    
                                      <div class="row form-group">
                                        <div class="col col-md-3"><label for="email-input" class=" form-control-label">Sort by</label></div>
                                        <div class="col-12 col-md-6">
                                               <asp:TextBox ID="txtOrder" runat="server" CssClass="form-control" MaxLength="10000"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="txtOrder_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtOrder" >
                                </cc1:FilteredTextBoxExtender>
                                        </div>
                                    </div>
                                      <div class="row form-group">
                                        <div class="col col-md-3"><label for="email-input" class=" form-control-label">Photo</label></div>
                                        <div class="col-12 col-md-6">
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" id="btsave" runat="server" class="btn btn-primary btn-sm">
                                    <i class="fa fa-dot-circle-o"></i> Submit
                                </button>
                                <button type="reset" id="btclear" runat="server" class="btn btn-danger btn-sm">
                                    <i class="fa fa-ban"></i> Reset
                                </button>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                         <br />
                        <br />
                          <br />
                        <br />
                         <br />
                        <br />
                        <br />
                    </div>
                    </div>

                <div class="row" id="edit1" runat="server">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                   <div class="row">
                              <div class="col col-md-8">
                                  <button type="submit" class="btn btn-primary btn-sm" id="btnew" runat="server">
                                    <i class="fa fa-dot-circle-o"></i> New
                                </button>

                                  </div>
                            
                                        <div class="col col-md-4">
                                              <asp:DropDownList ID="ddhome2" runat="server" CssClass="form-control" AppendDataBoundItems="True" AutoPostBack="True">

    </asp:DropDownList>
                                    </div>
                                       </div>
                               <%--  <strong class="card-title">Type</strong>--%>
                            </div>
                    <asp:HiddenField ID="lblID" runat="server" />
                              <asp:HiddenField ID="IMG1" runat="server" />
                            <div class="card-body">
                                  <asp:Repeater ID="rpt1" runat="server" OnItemCommand="Button_ItemCommand" EnableViewState="true">
            <HeaderTemplate>
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Auto ID</th>
                                             <th>Sort by</th>
                                            <th>Name</th>
                                          
                                            <th>Images</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         </HeaderTemplate>
                
    <ItemTemplate>   
                                        <tr>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("TB_ID") %>'  /></td>
                                             <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("TB_ORDER") %>'  /></td>
                                            <td><%# Eval("TB_NAME") %><br /><%# Eval("TB_DESC") %></td>
                                          
                                               <td> <asp:Image ID="Image1" runat="server" Height="70px" 
                                              ImageUrl='<%# Bind("TB_IMG", "~/Images/{0}") %>'  onclick="CreatepopUp(this.src);" /></td>
                                            <td> <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("TB_STATUS") %>'  /></td>
                                            <td>
                                                 <asp:LinkButton ID="LinkButton1" runat="server" CommandName="EDIT" CssClass="btn btn-primary btn-sm">Edit</asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="DEL" CssClass="btn btn-danger btn-sm" OnClientClick="return confirm('Are you sure?')">Delete</asp:LinkButton>
                                                
                                            </td>
                                           
                                        </tr>
                                        
                                        </ItemTemplate>
                                        <FooterTemplate>
                                       
                                    </tbody>
                                </table>
                                            </FooterTemplate>
                                      </asp:Repeater>
                            </div>
                        </div>
                    </div>


                </div>
                </div>
            </div>
</asp:Content>

