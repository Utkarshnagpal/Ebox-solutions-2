package src;



public class Skill {
    
    private Long skillId;
    private String skillName;

    public Skill(Long skillId, String skillName) {
        this.skillId = skillId;
        this.skillName = skillName;
    }

    public Long getSkillId() {
        return skillId;
    }

    public void setCityId(Long skillId) {
        this.skillId = skillId;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }
   
    
    @Override
    public String toString() {
        return   skillName ;
    }
    
}
