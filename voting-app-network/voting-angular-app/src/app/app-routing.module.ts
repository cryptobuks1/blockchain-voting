/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { HomeComponent } from './home/home.component';

import { ifVotedComponent } from './ifVoted/ifVoted.component';
import { candidateVoteComponent } from './candidateVote/candidateVote.component';

import { voterComponent } from './voter/voter.component';

import { voteComponent } from './vote/vote.component';
import { AdminComponent } from './admin/admin.component';
import { CandidatesComponent } from './candidates/candidates.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'ifVoted', component: ifVotedComponent },
  { path: 'candidateVote', component: candidateVoteComponent },
  { path: 'voter', component: voterComponent },
  { path: 'vote', component: voteComponent },
  { path: 'candidates', component: CandidatesComponent },
  { path: 'admin', component: AdminComponent},
  { path: '**', redirectTo: '' }
];

@NgModule({
 imports: [RouterModule.forRoot(routes)],
 exports: [RouterModule],
 providers: []
})
export class AppRoutingModule { }
