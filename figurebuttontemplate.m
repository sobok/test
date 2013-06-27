%%
ts_fh=figure; 
ts_ah = plot(1,1) ;
noBtn = 4;                                                              % no. of trial cases (= no. of buttons)
btnAct = {'new soma';'new node';'delete node';'end'};           % trial cases, currently only 'param' and 'IF' will be considered
btnClbck = struct('value',num2cell([0:noBtn-1]'),'action',btnAct);      % data linked with button push
btnSize = [75 20];
origin = [0 0];
for ii = 1:noBtn                                                        % creates buttons
   btn_h(ii) = uicontrol(ts_fh,...
       'string',[num2str(btnClbck(ii).value) ':' btnClbck(ii).action],...
       'Position',[origin btnSize]);
   origin(1) = origin(1)+btnSize(1);
   set(btn_h(ii),'UserData',btnClbck(ii))                              % data linked to button object
   set(btn_h(ii),'Callback',['choice=' num2str(ii)]);            % callback function linked to button push
end
% 
% ts_ch = get(ts_ah,'Children');
% for ii = 1:noStim
%    title(ts_ah,['cell #2: select trial #' num2str(ii)])
%    set(ts_ch,'YData',A2.data(tr2(ii):tr2(ii)+stimInt)./1e4);          % exchange empty trial with ii-th trial
%    drawnow
%    uiwait
%    T2(ii) = struct('value',clbck.value,'action',clbck.action);
%    idx2(ii) = clbck.value;
% end 


%%
