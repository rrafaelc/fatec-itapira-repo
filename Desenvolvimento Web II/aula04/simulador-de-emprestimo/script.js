const form = document.querySelector('form');

const nome = form.querySelector('#nome');
const score = form.querySelector('#score');
const valor = form.querySelector('#valor');
const parcelas = form.querySelector('#parcelas');
const radioSim = form.querySelector('#sim');
const radioNao = form.querySelector('#nao');
const labelScore = document.querySelector('label[for="score"]');

radioSim.addEventListener('click', () => {
  score.value = 0;
  labelScore.style.display = 'none';
});

radioNao.addEventListener('click', () => {
  score.value = '';
  labelScore.style.display = 'block';
});

const elementNumberValidator = ({
  element,
  name,
  minNumber,
  maxNumber,
  substantivo,
}) => {
  if (!element.value || element.value.trim() === '') {
    element.value = '';
    alert(`Por favor digite ${substantivo === 'f' ? 'a' : 'o'} ${name}`);

    return false;
  } else if (isNaN(element.value)) {
    element.value = '';
    alert(
      `Por favor digite somente números para ${
        substantivo === 'f' ? 'a' : 'o'
      } ${name}`
    );

    return false;
  }

  if (maxNumber) {
    if (element.value < minNumber || element.value > maxNumber) {
      element.value = '';
      alert(
        `${
          substantivo === 'f' ? 'A' : 'O'
        } ${name} somente aceita valores maior ou igual á ${minNumber} até ${maxNumber}`
      );

      return false;
    }
  } else {
    if (element.value < minNumber) {
      element.value = '';
      alert(
        `${
          substantivo === 'f' ? 'A' : 'O'
        } ${name} somente aceita valores maior ou igual á ${minNumber}`
      );

      return false;
    }
  }

  return true;
};

form.addEventListener('submit', event => {
  event.preventDefault();

  if (!nome.value || nome.value.trim() === '') {
    nome.value = '';
    alert('Por favor digite seu nome');

    return;
  }

  if (!radioSim.checked && !radioNao.checked) radioNao.checked = true;

  const validateScore = elementNumberValidator({
    element: score,
    name: 'score',
    minNumber: 0,
    maxNumber: 1000,
  });

  if (!validateScore) return;

  const validateEmprestimo = elementNumberValidator({
    element: valor,
    name: 'valor do empréstimo',
    minNumber: 100,
  });

  if (!validateEmprestimo) return;

  const validateParcelas = elementNumberValidator({
    element: parcelas,
    name: 'quantidade de parcelas',
    minNumber: 1,
    maxNumber: 24,
    substantivo: 'f',
  });

  if (!validateParcelas) return;

  form.submit();
});
