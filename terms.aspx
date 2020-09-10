<%@ page title="" language="VB" masterpagefile="~/MasterPage.master" autoeventwireup="false" inherits="terms, App_Web_d5yn2pzd" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
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
                                    <li class="active">Terms & Conditions</li>
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

    <asp:HiddenField ID="lblid" runat="server" />
                    <div class="col-lg-12" >
                        <div class="card">
                            <div class="card-header">
                                <strong>Terms</strong> 
                            </div>
                            <div class="card-body card-block">
                                <div  class="form-horizontal">
                                     
                                       <div class="row form-group">
                                      
                                        <div class="col-12 col-md-6"><input type="text" id="txtname" runat="server" name="text-input" placeholder="Title" class="form-control" maxlength="50" />
                                            <br />
                                        </div>
                                    <br />
                                         <asp:TextBox ID="FreeTextBox1" runat="server" Width="75%" Height="400" TextMode="MultiLine"></asp:TextBox>
                                 <cc1:HtmlEditorExtender ID="HtmlEditorExtender1"   runat="server" TargetControlID="FreeTextBox1" DisplayPreviewTab="True" DisplaySourceTab="True" EnableSanitization="false">

                                     <Toolbar> 
                <cc1:Undo />
                <cc1:Redo />
                <cc1:Bold />
                <cc1:Italic />
                <cc1:Underline />
                <cc1:StrikeThrough />
                <cc1:Subscript />
                <cc1:Superscript />
                <cc1:JustifyLeft />
                <cc1:JustifyCenter />
                <cc1:JustifyRight />
                <cc1:JustifyFull />
                <cc1:InsertOrderedList />
                <cc1:InsertUnorderedList />
                <cc1:CreateLink />
                <cc1:UnLink />
                <cc1:RemoveFormat />
                <cc1:SelectAll />
                <cc1:UnSelect />
                <cc1:Delete />
                <cc1:Cut />
                <cc1:Copy />
                <cc1:Paste />
                <cc1:BackgroundColorSelector />
                <cc1:ForeColorSelector />
                <cc1:FontNameSelector />
                <cc1:FontSizeSelector />
                <cc1:Indent />
                <cc1:Outdent />
                <cc1:InsertHorizontalRule />
                <cc1:HorizontalSeparator />
                                      
                <cc1:InsertImage />
            </Toolbar>
                                </cc1:HtmlEditorExtender>
                                       </div>
                                    
                                  
                                    
                                     
                                    
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" id="btsave" runat="server" class="btn btn-primary btn-sm">
                                    <i class="fa fa-dot-circle-o"></i> Submit
                                </button>
                              
                            </div>
                        </div>
                      
                    </div>
                    </div>

                
                </div>
          
</asp:Content>

