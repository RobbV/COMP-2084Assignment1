using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //all from calculations
        protected void calculateGame_Click(object sender, EventArgs e)
        {
            // variable needed to calulations

            Double gamesWon;
            gamesWon = 0;
            Double gamesLost;
            gamesLost = 0;

            // Checking radio buttons to determine how many games are won and lost
            // game One  
            if (winOne.Checked)
                {
                    gamesWon ++;
                }
                else if (lossOne.Checked)
                {
                    gamesLost ++;
                }
            // Game Two
            if (winTwo.Checked)
                {
                    gamesWon ++;

                }
            else if (lossTwo.Checked)
                {
                    gamesLost ++;
   
                }
            // Game Three
            if (winThree.Checked)
            {
                gamesWon ++;
            }
            else if (lossThree.Checked)
            {
                gamesLost ++;
            }
            // Game Four
            if (winFour.Checked)
            {
                gamesWon ++;
            }
            else if (lossFour.Checked)
            {
                gamesLost ++;
            }
            // display all results
                // win and loss
                won.Text = string.Concat("Wins: " , gamesWon.ToString());
                lost.Text = string.Concat("Losses: ", gamesLost.ToString());

            // Winning Percentage
                Double percent = gamesWon / 4;
                perCent.Text = string.Concat("Winning %: ", percent.ToString());

                // total points scored
                    // get the inputs from the form
                    Double scoreOne = Convert.ToDouble(ScoredOne.Text);
                    Double scoreTwo = Convert.ToDouble(ScoredTwo.Text);
                    Double scoreThree = Convert.ToDouble(ScoredThree.Text);
                    Double scoreFour = Convert.ToDouble(ScoredFour.Text);
                    // Calculate total point Scored
                    Double totalScored = scoreOne + scoreTwo + scoreThree + scoreFour;
                    // output total scored to DOM
                    totalScore.Text = string.Concat("Total goals scored: ", totalScored.ToString());
                // Total Point Allowed
                    // get the inputs from the form
                    Double allowOne = Convert.ToDouble(AllowedOne.Text);
                    Double allowTwo = Convert.ToDouble(AllowedTwo.Text);
                    Double allowThree = Convert.ToDouble(AllowedThree.Text);
                    Double allowFour = Convert.ToDouble(AllowedFour.Text);
                    // Calculate total point allowed
                    Double Allowed = allowOne + allowTwo + allowThree + allowFour;
                    // output total points Allowed to DOM
                    totalAllowed.Text = string.Concat("Total point allowed: ", Allowed.ToString());

                // point difference
                    //calculate the point diffrence
                    Double diff = totalScored - Allowed;
                    // output a message depending on the points Differnece
                    if (diff > 0)
                    {
                        pointDiff.Text = string.Concat("You scored ", diff.ToString(), " Point(s) more than the Other Team!");
                    }
                    else if (diff < 0 )
                    {
                        //convert a the negative number to a povitive
                        Double points = diff / -1;
                        pointDiff.Text = string.Concat("The Other Team Scored ", points.ToString(), " more point(s) than You.");
                    }
                    else
                    {
                        pointDiff.Text = "The amount of points scored are the same";
                    }

                // total spectators and average
                    //Total spectators 
                        // grab inputs from the form
                        Double specOne = Convert.ToDouble(SpectatorsOne.Text);
                        Double specTwo = Convert.ToDouble(SpectatorsTwo.Text);
                        Double specThree = Convert.ToDouble(SpectatorsThree.Text);
                        Double specFour = Convert.ToDouble(SpectatorsFour.Text);

                        // Calculate total spectators
                        Double totalSpectators = specOne + specTwo + specThree + specFour;

                        // output to Form
                        totalSpec.Text = string.Concat("total amount of spectators: ", totalSpectators.ToString());

                     // average spectators
                        // Calculate the Average
                        Double averageSpectators = totalSpectators / 4;

                        // Output to the user
                        avgSpec.Text = string.Concat("the average amount or spectators per game are: ", averageSpectators.ToString());
 
        }
    }
}