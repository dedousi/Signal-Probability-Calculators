% Lemonia Dedousi 4348 (ask 1.3)
clear all;
function s = signalprobs(varargin)

  if (nargin == 2)
    ans = sp2AND(varargin{1}, varargin{2})
    switching_activity(ans);
    ans = sp2OR(varargin{1}, varargin{2})
    switching_activity(ans);
    % (a)
    ans = sp2XOR(varargin{1}, varargin{2})
    switching_activity(ans);
    ans = sp2NAND(varargin{1}, varargin{2})
    switching_activity(ans);
    ans = sp2NOR(varargin{1}, varargin{2})
    switching_activity(ans);
  elseif ( nargin == 3)
    % (b)
    ans = sp3AND(varargin{1}, varargin{2}, varargin{3})
    switching_activity(ans);
    ans = sp3OR(varargin{1}, varargin{2}, varargin{3})
    switching_activity(ans);
    ans = sp3XOR(varargin{1}, varargin{2}, varargin{3})
    switching_activity(ans);
    ans = sp3NAND(varargin{1}, varargin{2}, varargin{3})
    switching_activity(ans);
    ans = sp3NOR(varargin{1}, varargin{2}, varargin{3})
    switching_activity(ans);
  else
    % (c)
    % here we can say that if it was not asked of us, we could have had only
    % this segment of code for all of our calculations.
    ans = spAND(varargin)
    switching_activity(ans);
    ans = spOR(varargin)
    switching_activity(ans);
    ans = spXOR(varargin)
    switching_activity(ans);
    ans = spNAND(varargin)
    switching_activity(ans);
    ans = spNOR(varargin)
    switching_activity(ans);
  endif
end

% (d)
function f = switching_activity(check)
  f = 2 * check * (1-check);
  fprintf('The estimated switching activity is %d \n',f);
endfunction

function s = sp2AND(input1sp, input2sp)
  % 2-input AND gate truth table
  % I1 I2 Out
  % 0  0 | 0
  % 0  1 | 0
  % 1  0 | 0
  % 1  1 | 1
  %% signal probability calculator for a 2-input AND gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %%        s: output signal probability
  printf("AND Gate for input probabilities (%f %f): ",input1sp,input2sp);
  s = input1sp * input2sp;
endfunction

function s = sp2OR(input1sp, input2sp)
  % 2-input OR gate truth table
  % I1 I2 Out
  % 0  0 | 0
  % 0  1 | 1
  % 1  0 | 1
  % 1  1 | 1
  %% signal probability calculator for a 2-input OR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %%        s: output signal probability
  printf("OR Gate for input probabilities (%f %f): ",input1sp,input2sp);
  s = 1-(1-input1sp)*(1-input2sp);
endfunction

function s = sp2XOR(input1sp, input2sp)
  % 2-input XOR gate truth table
  % I1 I2 Out
  % 0  0 | 0
  % 0  1 | 1
  % 1  0 | 1
  % 1  1 | 0
  %% signal probability calculator for a 2-input XOR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %%        s: output signal probability
  printf("XOR Gate for input probabilities (%f %f): ",input1sp,input2sp);
  s = ((1-input1sp)*input2sp) + (input1sp * (1-input2sp));
endfunction

function s = sp2NAND(input1sp, input2sp)
  % 2-input NAND gate truth table
  % I1 I2 Out
  % 0  0 | 1
  % 0  1 | 1
  % 1  0 | 1
  % 1  1 | 0
  %% signal probability calculator for a 2-input XOR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %%        s: output signal probability
  printf("NAND Gate for input probabilities (%f %f): ",input1sp,input2sp);
  s = 1 - (input1sp * input2sp);
endfunction

function s = sp2NOR(input1sp, input2sp)
  % 2-input NOR gate truth table
  % I1 I2 Out
  % 0  0 | 1
  % 0  1 | 0
  % 1  0 | 0
  % 1  1 | 0
  %% signal probability calculator for a 2-input NOR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %%        s: output signal probability
  printf("NOR Gate for input probabilities (%f %f): ",input1sp,input2sp);
  s = (1-input1sp) * (1-input2sp);
endfunction

function s = sp3AND(input1sp, input2sp, input3sp)
  % 3-input AND gate truth table
  % I1 I2 I3 Out
  % 0  X  X | 0
  % X  0  X | 0
  % X  X  0 | 0
  % 1  1  1 | 1
  %% signal probability calculator for a 3-input AND gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %% input3sp: signal probability of third input signal
  %%        s: output signal probability
  printf("AND Gate for input probabilities (%f %f %f): ",input1sp,input2sp,input3sp);
  s = input1sp * input2sp * input3sp;
endfunction

function s = sp3OR(input1sp, input2sp, input3sp)
  % 3-input OR gate truth table
  % I1 I2 I3 Out
  % 0  0  0 | 0
  % 1  X  X | 1
  % X  1  X | 1
  % X  X  1 | 1
  %% signal probability calculator for a 3-input OR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %% input3sp: signal probability of third input signal
  %%        s: output signal probability
  printf("OR Gate for input probabilities (%f %f %f): ",input1sp,input2sp,input3sp);
  s = 1- ((1-input1sp) * (1-input2sp) * (1-input3sp));
endfunction

function s = sp3XOR(input1sp, input2sp, input3sp)
  % 3-input XOR gate truth table
  % I1 I2 I3 Out
  % 0  0  0 | 0
  % 0  0  1 | 1
  % 0  1  0 | 1
  % 0  1  1 | 0
  % 1  0  0 | 1
  % 1  0  1 | 0
  % 1  1  0 | 0
  % 1  1  1 | 1
  %% signal probability calculator for a 2-input XOR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %% input3sp: signal probability of third input signal
  %%        s: output signal probability
  printf("XOR Gate for input probabilities (%f %f %f): ",input1sp,input2sp,input3sp);
  s = (input1sp*(1-input2sp)*(1-input3sp)) + ((1-input1sp)*input2sp*(1-input3sp)) + ((1-input1sp)*(1-input2sp)*input3sp) + (input1sp*input2sp*input3sp);
endfunction

function s = sp3NAND(input1sp, input2sp, input3sp)
  % 3-input NAND gate truth table
  % I1 I2 I3 Out
  % 0  0  0 | 1
  % 0  0  1 | 1
  % 0  1  0 | 1
  % 0  1  1 | 1
  % 1  0  0 | 1
  % 1  0  1 | 1
  % 1  1  0 | 1
  % 1  1  1 | 0
  %% signal probability calculator for a 2-input XOR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %% input3sp: signal probability of third input signal
  %%        s: output signal probability
  printf("NAND Gate for input probabilities (%f %f %f): ",input1sp,input2sp,input3sp);
  s = 1 - (input1sp * input2sp * input3sp);
endfunction

function s = sp3NOR(input1sp, input2sp, input3sp)
  % 3-input NOR gate truth table
  % I1 I2 I3 Out
  % 0  0  0 | 1
  % 1  X  X | 0
  % X  1  X | 0
  % X  X  1 | 0
  %% signal probability calculator for a 2-input NOR gate
  %% input1sp: signal probability of first input signal
  %% input2sp: signal probability of second input signal
  %% input3sp: signal probability of third input signal
  %%        s: output signal probability
  printf("NOR Gate for input probabilities (%f %f %f): ",input1sp,input2sp,input3sp);
  s = (1-input1sp) * (1-input2sp) * (1-input3sp);
endfunction

function s = spAND(varargin)
  % N input AND will be 1 only when all inputs are 1.
  % s: output signal probability
  matrix = cell2mat(varargin{1});
  N = size(matrix,2);
  s = 1;
  for i = 1:N
    s = s * matrix(i);
  endfor
  printf("AND (%d-inputs) Gate: ",N);
endfunction

function s = spOR(varargin)
  % N input OR won't be 1 only when all inputs are 0.
  % s: output signal probability
  matrix = cell2mat(varargin{1});
  N = size(matrix,2);
  s = 1;
  for i = 1:N
    s = s * (1-matrix(i));
  endfor
  s = 1 - s;
  printf("OR (%d-inputs) Gate: ",N);
endfunction

function s = spXOR(varargin)
  matrix = cell2mat(varargin{1});
  N = size(matrix,2);

  % generate the truth table
  T = zeros(2^N,N);
  for i = 1:N
    temp = [zeros(2^N/2^i,1); ones(2^N/2^i,1)]; % make columns of the truth table
    T(:,i) = repmat(temp,2^(i-1),1);            % add them to the truth table
  end

  % N input XOR will be 1 when we don't have even number 1.
  % s: output signal probability
  s = 0;
  for i = 1:(2^N)

    one_calculator = 0;
    for j = 1:N
      if (T(i,j) == 1)
        one_calculator = one_calculator + 1;
      endif
    endfor

    if(mod(one_calculator,2) != 0)
      temp = 1;
      for j = 1:N
        if(T(i,j) == 0)
          temp = temp * (1-matrix(j));
        else
          temp = temp * matrix(j);
        endif
      endfor
      s = s + temp;
    endif

  endfor
  printf("XOR (%d-inputs) Gate: ",N);
endfunction

function s = spNAND(varargin)
  % N input NAND will be 1 when we don't have all of our inputs 1.
  % s: output signal probability
  matrix = cell2mat(varargin{1});
  N = size(matrix,2);
  s = 1;
  for i = 1:N
    s = s * matrix(i);
  endfor
  s = 1 - s;
  printf("NAND (%d-inputs) Gate: ",N);
endfunction

function s = spNOR(varargin)
  % N input NOR will be 1 only when all our inputs are 0.
  % s: output signal probability
  matrix = cell2mat(varargin{1});
  N = size(matrix,2);
  s = 1;
  for i = 1:N
    s = s * (1-matrix(i));
  endfor
  printf("NOR (%d-inputs) Gate: ",N);
endfunction
