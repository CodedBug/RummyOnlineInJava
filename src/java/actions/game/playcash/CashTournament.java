/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.game.playcash;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import database.game.playcash.DatabaseCashTournament;


/**
 *
 * @author Abhishek
 */
public class CashTournament extends ActionSupport implements ModelDriven,Preparable {
    
    DatabaseCashTournament bct;
    @Override
    public String execute()
    {
        
        return bct.set();
    }

    @Override
    public Object getModel() {
        return bct;
    }

    @Override
    public void prepare() throws Exception {
        bct=new DatabaseCashTournament();
    }
    
}
