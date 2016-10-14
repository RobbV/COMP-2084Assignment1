<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment1._Default" %>

<asp:Content ID="gameCalculator" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Assignment 1: Game Calculator</h2>
    <p>All fleids are Required! Ties will not work one team must have lost</p>
    <div class="container">
        <div class="row">
            <!-- Game One -->
            <div class="col-md-3">
                <!-- box title -->
                <h3>Game 1</h3>
                <!-- radio button Input -->
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" for="winLossOne" Text="Result:">
                        <asp:RadioButton ID="winOne" runat="server" Text="Win" GroupName="winLossOne" requider="required"/>
                        <asp:RadioButton ID="lossOne" runat="server" text="Loss" GroupName="winLossOne"/>
                    </asp:Label>
                </div>
                <!-- amount of goals scored -->
                <div class="form-group">
                    <asp:Label ID="gameOneScored" runat="server" for="ScoredOne" Text="Scored:"></asp:Label>
                    <asp:TextBox ID="ScoredOne" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required" ></asp:TextBox>

                </div>
                <!-- Amount of goals allowed -->
                <div class="from-group">
                    <asp:Label ID="gameOneAllowed" runat="server" for="AllowedOne"  Text="Allowed:"></asp:Label>
                    <asp:TextBox ID="AllowedOne" runat="server" class="form-control"  type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of spectators -->
                <div class="form-group">
                    <asp:Label ID="gameOneSpectators"  runat="server" for="SpectatorsOne" Text="Spectators:"></asp:Label>
                    <asp:TextBox ID="SpectatorsOne" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- form Validation -->
                <!-- win loss radio button -->

                <div class="form-group">
                <!-- Goal Validation -->
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="ScoredOne"></asp:RequiredFieldValidator>

                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="ScoredOne"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="AllowedOne"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="AllowedOne"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="SpectatorsOne"></asp:RequiredFieldValidator>
                    
                     <asp:RangeValidator ID="RangeValidator12" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="SpectatorsOne"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>
                </div>
             </div>
            <!-- Game Two -->
            <div class="col-md-3">
                 <!-- box title -->
                <h3>Game 2</h3>
                <!-- radio button Input -->
                <div class="form-group">
                   <asp:Label ID="Label2" runat="server" for="winLossTwo" Text="Result:">
                       <asp:RadioButton ID="winTwo" runat="server" Text="Win" GroupName="winLossTwo" requider="required"/>
                    <asp:RadioButton ID="lossTwo" runat="server" text="Loss" GroupName="winLossTwo"/>
                   </asp:Label>
                </div>
                <!-- amount of goals scored -->
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" for="ScoreTwo" Text="Scored:"></asp:Label>
                    <asp:TextBox ID="ScoredTwo" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of goals allowed -->
                <div class="from-group">
                    <asp:Label ID="Label4" runat="server" for="AllowedTwo" Text="Allowed:" ></asp:Label>
                    <asp:TextBox ID="AllowedTwo" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of spectators -->
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" for="SpectatorsTwo" Text="Spectators:"></asp:Label>
                    <asp:TextBox ID="SpectatorsTwo" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- form Validation -->
                <!-- win loss radio button -->

                <div class="form-group">
                <!-- Goal Validation -->
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="ScoredTwo"></asp:RequiredFieldValidator>

                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="ScoredTwo"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="AllowedTwo"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator4" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="AllowedTwo"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="SpectatorsTwo"></asp:RequiredFieldValidator>
                    
                     <asp:RangeValidator ID="RangeValidator11" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="SpectatorsTwo"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>
            </div>
          </div><!-- ./ game two -->
            <!-- Game Three -->
            <div class="col-md-3">
                 <!-- box title -->
                <h3>Game 3</h3>
                <!-- radio button Input -->
                <div class="form-group">
                  <asp:Label ID="Label6" runat="server" for="winLossThree" Text="Result:">
                    <asp:RadioButton ID="winThree" runat="server" Text="Win" GroupName="winLossThree" requider="required"/>
                    <asp:RadioButton ID="lossThree" runat="server" text="Loss" GroupName="winLossThree"/>
                   </asp:Label>
                </div>
                <!-- amount of goals scored -->
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" for="ScoredThree" Text="Scored:"></asp:Label>
                    <asp:TextBox ID="ScoredThree" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of goals allowed -->
                <div class="from-group">
                    <asp:Label ID="Label8" runat="server" for="AllowedThree" Text="Allowed:"></asp:Label>
                    <asp:TextBox ID="AllowedThree" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of spectators -->
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" for="SpectatorsThree" Text="Spectators:"></asp:Label>
                    <asp:TextBox ID="SpectatorsThree" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- form Validation -->
                <!-- win loss radio button -->

                <div class="form-group">
                <!-- Goal Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="ScoredThree"></asp:RequiredFieldValidator>

                    <asp:RangeValidator ID="RangeValidator5" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="ScoredThree"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="AllowedThree"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator6" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="AllowedThree"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="SpectatorsThree"></asp:RequiredFieldValidator>
                    
                     <asp:RangeValidator ID="RangeValidator10" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="SpectatorsThree"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>
            </div>
        </div><!-- ./ Game three -->
            <!-- Game Four -->
            <div class="col-md-3">
                 <!-- box title -->
                <h3>Game4</h3>
                <!-- radio button Input -->
                <div class="form-group">
                    <asp:Label ID="Label10" runat="server" for="winLossFour" Text="Result:">
                        <asp:RadioButton ID="winFour" runat="server" Text="Win" GroupName="winLossFour" requider="required"/>
                        <asp:RadioButton ID="lossFour" runat="server"  text="Loss" GroupName="winLossFour"/>
                    </asp:Label>
                </div>
                <!-- amount of goals scored -->
                <div class="form-group">
                    <asp:Label ID="Label11" runat="server" for="ScoredFour" Text="Scored:"></asp:Label>
                    <asp:TextBox ID="ScoredFour" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of goals allowed -->
                <div class="from-group">
                    <asp:Label ID="Label12" runat="server" for="AllowedFour" Text="Allowed:"></asp:Label>
                    <asp:TextBox ID="AllowedFour" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- Amount of spectators -->
                <div class="form-group">
                    <asp:Label ID="Label13" runat="server" for="SpectatorsFour" Text="Spectators:"></asp:Label>
                    <asp:TextBox ID="SpectatorsFour" runat="server" class="form-control" type="number" aria-describedby="helpBlock" requider="required"></asp:TextBox>
                </div>
                <!-- form Validation -->
                <!-- win loss radio button -->

                <div class="form-group">
                <!-- Goal Validation -->

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="ScoredFour"></asp:RequiredFieldValidator>

                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="ScoredFour"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="AllowedFour"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator8" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="AllowedFour"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="Integer" Display="Dynamic" >
                    </asp:RangeValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       cssclass="alert-danger" ErrorMessage="RequiredFieldValidator" ControlToValidate="SpectatorsFour"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator9" runat="server" 
                    ErrorMessage="**Sorry can't take that Input**"
                    cssclass="alert-danger" ControlToValidate="SpectatorsFour"
                    MaximumValue="9999999" MinimumValue="1" 
                    Type="integer" Display="Dynamic" >
                    </asp:RangeValidator>
            </div>
        </div><!-- ./ Game four -->
    </div>
  </div>
    <div class="form-group">
        <asp:Button ID="calculateGame" runat="server" Text="Calculate" CssClass="btn btn-success" OnClick="calculateGame_Click" />
    </div>
    <!-- won -->
    <div>
        <asp:Label ID="won" runat="server" />
    </div>
    <!-- Losses -->
    <div>
        <asp:Label ID="lost" runat="server" />
    </div>
    <!-- Percentage -->
    <div>
        <asp:Label ID="perCent" runat="server" />
    </div>
    <!-- Total Scored -->
    <div>
        <asp:Label ID="totalScore" runat="server" />
    </div>
    <!-- Total Allowed -->
    <div>
        <asp:Label ID="totalAllowed" runat="server" />
    </div>
    <!-- Point Diffrence -->
    <div>
        <asp:Label ID="pointDiff" runat="server" />
    </div>
    <!-- Total Spectators -->
    <div>
        <asp:Label ID="totalSpec" runat="server" />
    </div>
    <!-- Average Spectators -->
    <div>
        <asp:Label ID="avgSpec" runat="server" />
    </div>




</asp:Content>
