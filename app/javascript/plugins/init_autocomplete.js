import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('store-search');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
