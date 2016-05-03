/**
 * Created by maygun on 02/05/2016.
 */
public class Population {
    Individual[] individuals;


    public Population(int size,boolean init){
        individuals = new Individual[size];
        if(init){
            for(int i=0;i<size();i++){
                Individual newIndividual = new Individual();
                newIndividual.generateIndividual();
                saveIndividual(i,newIndividual);
            }
        }
    }



    public Individual getIndividual(int index){
        return individuals[index];
    }



    public Individual getFitTest(){
        Individual fittest = individuals[0];
        for(int i=0;i<size();i++){
            if(fittest.getFitness() <= getIndividual(i).getFitness()){
                fittest = getIndividual(i);
            }
        }
        return  fittest;
    }

    public  int size(){
        return individuals.length;
    }

    public void saveIndividual(int index,Individual indiv){
        individuals[index]=indiv;
    }
}
