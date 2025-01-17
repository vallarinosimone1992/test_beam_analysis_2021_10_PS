#include<iostream>

#include<TSystem.h>
#include<TFile.h>

#include "utility.h"
#include "definition.h"

using namespace std;

void printProgress(double progress){
    int bar = 70;
    cout<<"[";
    int pos = bar*progress;
    for(int i = 0; i < bar; i++){
      if(i < pos) cout <<"=";
      else if(i == pos)cout  <<">";
      else cout <<" ";
    }
    cout <<"]  " <<int(progress*100) <<"%\r";
    cout.flush();
}

void printEnd(){
  int bar = 70;
  cout<<"[";
  int pos = bar;
  for(int i = 0; i < bar; i++){
    if(i < pos) cout <<"=";
    else if(i == pos)cout  <<">";
    else cout <<" ";
  }
  cout <<"] " <<int(100) <<"\n";
}

void printUsageReco(){
  cout <<"\n\n#### USAGE ####\n./reco run_number\n\n[EXAMPLE] ./reco 214\n\n[WARNING] DO NOT PERFORM RECO IN VME! You should do launch it in OPTINO\n\n";
  exit(EXIT_FAILURE);
}
void printUsageAna(){
  cout <<"\n\n#### USAGE ####\nTo analyze a single run: ./ana run_number \n\nTo analyze N different runs: ./ana output_name run_number_1 ... run_number_N\n\n[WARNING] DO NOT PERFORM ANALYSIS IN VME! You should do launch it in CENTRINO\n\n";
  exit(EXIT_FAILURE);
}
void printUsageMon(){
  cout <<"\n\n#### USAGE ####\nTo show the monitor: ./mon run_number \n\nTo analyze N different runs: ./mon output_name run_number_1 ... run_number_N\n\n[WARNING] DO NOT PERFORM MONITOR IN VME! You should do launch it in CENTRINO\n\n";
  exit(EXIT_FAILURE);
}

void checkFileExistance(THeader *run){
  if(run->runType!="MERGED"){
    if(gSystem->AccessPathName(Form("%s/DATA/dRICH_DATA/run_%04d.root",&run->suite[0],run->runNum))){
      cout <<"[ERROR] dRICH run not found\n";
      exit(EXIT_FAILURE);
    }

    TFile *fdRICH = new TFile(Form("%s/DATA/dRICH_DATA/run_%04d.root",&run->suite[0],run->runNum),"READ");
    if(fdRICH->IsZombie()){
      cout <<"[ERROR] fdRICH is zombie! Something was wrong\n";
      exit(EXIT_FAILURE);
    }
    fdRICH->Close();
    if(run->runNumGEM != 0){
      if(gSystem->AccessPathName(Form("%s/DATA/GEM_DATA/run_%04d_gem.root",&run->suite[0],run->runNumGEM))){
        cout <<"[ERROR] GEM run not found\n";
        exit(EXIT_FAILURE);
      }
      TFile *fGEM = new TFile(Form("%s/DATA/GEM_DATA/run_%04d_gem.root",&run->suite[0],run->runNumGEM),"READ");
      if(fGEM->IsZombie()){
        cout <<"[ERROR] fGEM is zombie! Something was wrong\n";
        exit(EXIT_FAILURE);
      }
      fGEM->Close();
    }
  }
}


void writeHeader(THeader *run){
  FILE *f;
  string fname=Form("%s/output/header/run%04d_header.txt",run->suite.c_str(),run->runNum);
  f=fopen(fname.c_str(),"w");
  fprintf(f,"dRICH run number %d\n",run->runNum);
  fprintf(f,"GEM run number %d\n",run->runNumGEM);
  fprintf(f,"Date info: day %s, start time %s, end time %s\n",run->day.c_str(),run->startTime.c_str(),run->endTime.c_str());
  fprintf(f,"There was a beam of %s with energy %d GeV\n",run->beam.c_str(),run->energyGeV);
  fprintf(f,"The aerogel mirror was in z=%f, the gas mirror was in z=%f\n",run->firstMirrorPosition,run->secondMirrorPosition);
  fprintf(f,"Data were acquired using the %ss\n",run->sensor.c_str());
  fprintf(f,"The trigger was %s\n",run->trigger.c_str());
  fprintf(f,"The reconstruction was performed using the %s setup file\n\n",run->setupFile.c_str());

  fprintf(f,"General run variables\n");
  fprintf(f,"Time coincidence window extremes In: %lf %lf  Ou: %lf %lf\n",run->timeInMin,run->timeInMax,run->timeOuMin,run->timeOuMax);
  fprintf(f,"Upstream GEM on-beam centering offsets: %f %f\n",run->UpGEMxRunOff,run->UpGEMyRunOff);
  fprintf(f,"Downstream GEM on-beam centering offsets: %f %f\n",run->DnGEMxRunOff,run->DnGEMyRunOff); 

  fprintf(f,"Inner correction and cuts\n");
  fprintf(f,"x: %f\n",run->innerCorrectionX);
  fprintf(f,"y: %f\n",run->innerCorrectionY);
  fprintf(f,"Cut on radius: %lf\n",run->cutRadiusInRMS);
  fprintf(f,"Cut on time: %lf\n\n",run->cutTimeInRMS);
  fprintf(f,"Outer correction and cuts\n");
  fprintf(f,"x: %f\n",run->outerCorrectionX);
  fprintf(f,"y: %f\n",run->outerCorrectionY);
  fprintf(f,"Cut on radius: %lf\n",run->cutRadiusOutRMS);
  fprintf(f,"Cut on time: %lf\n",run->cutTimeOutRMS);

  fclose(f); 
}



int reference(int i, int j){
  int k=i*256+j;
  return k;
}
