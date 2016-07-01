public class GameFightObjController{
    public GameFightObj game { get; set; }
    public GameFightObjUnit unit1 { get; set; }
    public GameFightObjUnit unit2 { get; set; }
    public GameFightObjUnit winner { get; set; }
    public Boolean isShowResult { get; set; }
    
    public GameFightObjController(){
        unit1 = new GameFightObjUnit ();
        unit2 = new GameFightObjUnit ();
        winner = new GameFightObjUnit ();
        isShowResult = false;
    }
    
    public GameFightObjUnit getUnit1 () {
        return unit1;
    }
    public GameFightObjUnit getUnit2 () {
        return unit2;
    }
    
        public void setUnit1(GameFightObjUnit unit){
        unit1 = unit;
    }
    public void setUnit2(GameFightObjUnit unit){
        unit2 = unit;
    }
    
    public PageReference fight() {
        game = new GameFightObj();
        winner = game.fight(unit1, unit2);
        isShowResult = true;
        return null;
    }
}