/**
 * Created by maygun on 03/05/2016.
 */
public class Algorithm {
    private static final double uniformRate = 0.5;
    private static  final double mutationRate = 0.015;
    private static  final int tournamentSize=5;
    private static  final boolean elitism=true;



    public static  Population evolvePopulation(Population pop){
        Population newPopulation = new Population(pop.size(),false);
        if(elitism){
            newPopulation.saveIndividual(0,pop.getFitTest());
        }
        int elitismOffset;
        if(elitism){
            elitismOffset =1;
        }
        else{
            elitismOffset = 0;
        }


        for(int i=elitismOffset;i<pop.size();i++){
            Individual indiv1 = tournamentSelection(pop);
            Individual indiv2 = tournamentSelection(pop);
            Individual newIndiv = crossover(indiv1,indiv2);
            newPopulation.saveIndividual(i,newIndiv);
        }

        for(int i=elitismOffset;i<newPopulation.size();i++){
            mutate(newPopulation.getIndividual(i));
        }
        return newPopulation;
    }



    private static Individual crossover(Individual indiv1,Individual indiv2){
        Individual newSol = new Individual();
        for(int i=0;i< indiv1.size();i++){
            if(Math.random()<=uniformRate){
                newSol.setGenes(i,indiv1.getGene(i));
            }else{
                newSol.setGenes(i,indiv2.getGene(i));
            }
        }
        return newSol;
    }

    private static  void mutate(Individual indiv){
        for(int i=0;i<indiv.size();i++){
            if(Math.random()<=mutationRate){
                byte gene = (byte) Math.round(Math.random());
                indiv.setGenes(i,gene);
            }
        }
    }



    private static  Individual tournamentSelection(Population pop){
        Population tournament = new Population(tournamentSize,false);
        for(int i=0;i<tournamentSize;i++){
            int randomId = (int)(Math.random()*pop.size());
            tournament.saveIndividual(i,pop.getIndividual(randomId));
        }
        Individual fittest = tournament.getFitTest();
        return fittest;
    }
}
