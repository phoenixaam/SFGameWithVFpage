public class GameFightUnit implements Comparable{
    private String name;
    private Integer healthPoint;
    private Integer damageMin;
    private Integer damageMax;
    
    public GameFightUnit(){
        
    }

    public GameFightUnit(String name, Integer healthPoint, Integer damageMin, Integer damageMax) {
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
    
    public Integer compareTo(Object o) {
        GameFightUnit compareToUnit = (GameFightUnit)o;

        Integer returnValue = name.compareTo(compareToUnit.getName());

        if (returnValue == 0){
            if (healthPoint>compareToUnit.getHealthPoint()){
                 returnValue = 1;
            } else if (healthPoint<compareToUnit.getHealthPoint()){
                returnValue = -1;
            }
        }
        return returnValue;
    }
    
    public override String toString() {
        return 'GameFightUnit{' +
                'name="' + name + '\"' +
                ', healthPoint=' + healthPoint +
                '}';
    }
}