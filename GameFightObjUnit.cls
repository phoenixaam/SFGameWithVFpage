/**
 * There is the Unit participating in the battle.
 * Unit has own life (healthPoint) and strength (damageMin, damageMax).
 */
public class GameFightObjUnit{
    private String name;
    private Integer healthPoint;
    private Integer damageMin;
    private Integer damageMax;
    
    public GameFightObjUnit(){
        
    }

    public GameFightObjUnit(String name, Integer healthPoint, Integer damageMin, Integer damageMax) {
        this.name = name;
        this.healthPoint = healthPoint;
        this.damageMin = damageMin;
        this.damageMax = damageMax;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getHealthPoint() {
        return healthPoint;
    }

    public void setHealthPoint(Integer healthPoint) {
        this.healthPoint = healthPoint;
    }

    public Integer getDamageMin() {
        return damageMin;
    }

    public void setDamageMin(Integer damageMin) {
        this.damageMin = damageMin;
    }

    public Integer getDamageMax() {
        return damageMax;
    }

    public void setDamageMax(Integer damageMax) {
        this.damageMax = damageMax;
    }


}