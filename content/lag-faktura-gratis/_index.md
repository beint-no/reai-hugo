---
title: "Lag faktura"
description: "Fyll ut feltene, legg til linjer og last ned som PDF."
---

<div class="mt-12 flex justify-center">
  <div class="bg-white shadow-lg rounded-lg p-8 w-full max-w-4xl transition-transform duration-300 hover:scale-[1.01] hover:shadow-2xl">
    <h1 class="text-2xl font-bold mb-4 text-center">Fyll ut feltene nedenfor</h1>
    <p class="text-gray-600 text-center mb-8">
      Legg til linjer etter behov, og last ned som PDF. Fakturamal er helt gratis å bruke og informasjonen din lagres til neste gang. 
      Du kan alltid bruke <a href="https://reai.no" class="text-blue-600 underline">reai.no</a> for å lage en gratis faktura.
    </p>
    
    <!-- Invoice Form -->
    <div class="space-y-4">
      <!-- Sender and Receiver -->
      <div class="grid md:grid-cols-2 gap-6">
        <div>
          <label class="block text-sm font-medium text-gray-700 mb-1">Fra (selger)</label>
          <input type="text" id="from" class="w-full p-2 border rounded" placeholder="Ditt firmanavn" />
        </div>
        <div>
          <label class="block text-sm font-medium text-gray-700 mb-1">Til (kunde)</label>
          <input type="text" id="to" class="w-full p-2 border rounded" placeholder="Kundens navn" />
        </div>
      </div>
      
      <!-- Invoice Details -->
      <div class="grid md:grid-cols-3 gap-4">
        <div>
          <label class="block text-sm font-medium text-gray-700 mb-1">Fakturanummer</label>
          <input type="text" id="invoice-number" class="w-full p-2 border rounded" placeholder="F.eks. 2023-001" />
        </div>
        <div>
          <label class="block text-sm font-medium text-gray-700 mb-1">Fakturadato</label>
          <input type="date" id="invoice-date" class="w-full p-2 border rounded" />
        </div>
        <div>
          <label class="block text-sm font-medium text-gray-700 mb-1">Forfallsdato</label>
          <input type="date" id="due-date" class="w-full p-2 border rounded" />
        </div>
      </div>
      
      <!-- Items Table -->
      <div class="mt-6">
        <table class="min-w-full border">
          <thead>
            <tr class="bg-gray-50">
              <th class="border p-2 text-left">Beskrivelse</th>
              <th class="border p-2 text-right w-24">Antall</th>
              <th class="border p-2 text-right w-32">Pris</th>
              <th class="border p-2 text-right w-32">MVA %</th>
              <th class="border p-2 text-right w-32">Beløp</th>
              <th class="w-10"></th>
            </tr>
          </thead>
          <tbody id="items-body">
            <!-- Rows will be added here by JavaScript -->
          </tbody>
          <tfoot>
            <tr>
              <td colspan="4" class="border-t-2 border-b-0 border-l-0 border-r-0 p-2 text-right font-medium">Sum eks. mva:</td>
              <td class="border-t-2 border-b-0 border-l-0 border-r-0 p-2 text-right" id="subtotal">0,00 kr</td>
              <td></td>
            </tr>
            <tr>
              <td colspan="4" class="border-b-2 border-l-0 border-r-0 p-2 text-right font-medium">MVA:</td>
              <td class="border-b-2 border-l-0 border-r-0 p-2 text-right" id="vatTotal">0,00 kr</td>
              <td></td>
            </tr>
            <tr class="bg-gray-50">
              <td colspan="4" class="border-b-2 border-l-0 border-r-0 p-2 text-right font-bold">Å betale:</td>
              <td class="border-b-2 border-l-0 border-r-0 p-2 text-right font-bold" id="total">0,00 kr</td>
              <td></td>
            </tr>
          </tfoot>
        </table>
        
        <button id="add-row" class="mt-2 px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700 transition-colors">
          + Legg til linje
        </button>
      </div>
      
      <!-- Notes -->
      <div class="mt-6">
        <label class="block text-sm font-medium text-gray-700 mb-1">Notater</label>
        <textarea id="notes" class="w-full p-2 border rounded h-24" placeholder="Eventuelle notater..."></textarea>
      </div>
      
      <!-- Buttons -->
      <div class="mt-6 flex justify-between">
        <button id="reset" class="px-4 py-2 border border-gray-300 rounded text-gray-700 hover:bg-gray-50 transition-colors">
          Nullstill
        </button>
        <div class="space-x-2">
          <button id="preview" class="px-4 py-2 bg-gray-100 border border-gray-300 rounded text-gray-700 hover:bg-gray-200 transition-colors">
            Forhåndsvis
          </button>
          <button id="download" class="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700 transition-colors">
            Last ned PDF
          </button>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
(function() {
  const tbody = document.getElementById('items-body');
  const addBtn = document.getElementById('add-row');
  const subtotalEl = document.getElementById('subtotal');
  const vatTotalEl = document.getElementById('vatTotal');
  const totalEl = document.getElementById('total');
  
  const toNumber = (v) => {
    if (typeof v === 'string') {
      return parseFloat(v.replace(/,/g, '.').replace(/[^0-9.-]+/g, '')) || 0;
    }
    return v || 0;
  };
  
  const formatNOK = (n) => {
    return n.toFixed(2).replace(/\./g, ',') + ' kr';
  };
  
  const calcRow = (tr) => {
    const qty = toNumber(tr.querySelector('.qty').value);
    const price = toNumber(tr.querySelector('.price').value);
    const vat = toNumber(tr.querySelector('.vat').value);
    
    const subtotal = qty * price;
    const vatAmount = subtotal * (vat / 100);
    const total = subtotal + vatAmount;
    
    tr.querySelector('.total').textContent = formatNOK(subtotal);
    
    return { subtotal, vatAmount, total };
  };
  
  const recalcAll = () => {
    let subtotal = 0;
    let vatTotal = 0;
    
    document.querySelectorAll('#items-body tr').forEach(tr => {
      const { subtotal: rowSubtotal, vatAmount } = calcRow(tr);
      subtotal += rowSubtotal;
      vatTotal += vatAmount;
    });
    
    const total = subtotal + vatTotal;
    
    subtotalEl.textContent = formatNOK(subtotal);
    vatTotalEl.textContent = formatNOK(vatTotal);
    totalEl.textContent = formatNOK(total);
  };
  
  const bindRow = (tr) => {
    const inputs = tr.querySelectorAll('input, select');
    inputs.forEach(input => {
      input.addEventListener('input', recalcAll);
    });
    
    const removeBtn = tr.querySelector('.remove-row');
    if (removeBtn) {
      removeBtn.addEventListener('click', () => {
        tr.remove();
        recalcAll();
      });
    }
  };

  addBtn.addEventListener('click', () => {
    const tr = document.createElement('tr');
    tr.innerHTML = `
      <td class="border p-2"><input type="text" placeholder="Beskrivelse" class="w-full p-1 border rounded desc" /></td>
      <td class="border p-2"><input type="number" min="1" value="1" class="w-full p-1 border rounded text-right qty" /></td>
      <td class="border p-2"><input type="text" value="0,00" class="w-full p-1 border rounded text-right price" /></td>
      <td class="border p-2">
        <select class="w-full p-1 border rounded vat">
          <option value="0">0%</option>
          <option value="12" selected>12%</option>
          <option value="25">25%</option>
        </select>
      </td>
      <td class="border p-2 text-right total">0,00 kr</td>
      <td class="p-2">
        <button class="remove-row text-red-500 hover:text-red-700">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
          </svg>
        </button>
      </td>
    `;
    tbody.appendChild(tr);
    bindRow(tr);
    recalcAll();
  });
  
  // Add first row
  addBtn.click();
  
  // Set today's date as default
  const today = new Date().toISOString().split('T')[0];
  document.getElementById('invoice-date').value = today;
  
  // Set due date to 14 days from now
  const dueDate = new Date();
  dueDate.setDate(dueDate.getDate() + 14);
  document.getElementById('due-date').value = dueDate.toISOString().split('T')[0];
  
  // Reset form
  document.getElementById('reset').addEventListener('click', () => {
    if (confirm('Er du sikker på at du vil nullstille skjemaet?')) {
      document.querySelector('form').reset();
      tbody.innerHTML = '';
      addBtn.click();
      document.getElementById('invoice-date').value = today;
      const newDueDate = new Date();
      newDueDate.setDate(newDueDate.getDate() + 14);
      document.getElementById('due-date').value = newDueDate.toISOString().split('T')[0];
    }
  });
  
  // Preview button (placeholder)
  document.getElementById('preview').addEventListener('click', (e) => {
    e.preventDefault();
    alert('Forhåndsvisning vil bli vist her.');
  });
  
  // Download button (placeholder)
  document.getElementById('download').addEventListener('click', (e) => {
    e.preventDefault();
    alert('Nedlasting av PDF vil starte her.');
  });
})();
</script>
  </div>
</div>
