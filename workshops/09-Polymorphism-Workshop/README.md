# Polymorpism

One fundamental feature of object-oriented programming is _polymorpism_.

Consider the following code:

```ruby
class AccountingDocument 
  def initialize(type:, total:)
    @type = type
    @total = total
  end

  def get_journal
    case @type
      when :sale
        [
          :trade_debtors, -@total,
          :revenue, @total
        ] 
      when :purchase
        [
          :trade_creditors, @total,
          :loss, -@total
        ]
      when :expense
        [
          :employee_expenses, @total,
          :bank_account, -@total
        ]
      when :draft
        nil
      else
    end
  end
end
```

Where an example usage looks like:

```ruby
AccountingDocument.new(type: :purchase, total: '100.00')
```

## The problem

Every time we add a new type of `AccountingDocument` this switch statement will become more complicated.

Not only that - our AccountingDocument class will only ever grow in complexity as we discover more journal types.

## An alternative

Instead, we can use polymorpism:

```ruby
class AccountingDocument
  def initialize(journal_disposition:, total:)
    @journal_disposition = journal_disposition
    @total = total
  end

  def get_journal
    @journal_disposition.get_journal(@total)
  end
end
```

The above class can be said to be "Open for Extension" and "Closed for Modification".

We can then define classes for each "JournalDisposition"

```ruby
class SaleJournalDisposition
  def get_journal(total)
    [
      :trade_debtors, -@total,
      :revenue, @total
    ] 
  end
end
```

```ruby
class PurchaseJournalDisposition
  def get_journal(total)
    [
      :trade_creditors, @total,
      :revenue, -@total
    ] 
  end
end
```

```ruby
class ExpenseJournalDisposition
  def get_journal(total)
    [
      :employee_expenses, total,
      :bank_account, -@total
    ]
  end
end
```

```ruby
class NoJournalDisposition
end
```

But wait! We still need something which can convert `data` into `behaviour`

```ruby
class JournalDispositionFactory
  def create(type)
    case type
    when :sale
      SaleJournalDisposition.new
    when :purchase
      PurchaseJournalDisposition.new
    when :expense
      ExpenseJournalDisposition.new
    else
      NoJournalDisposition.new
    end
  end
end
```

As an example usage:

```ruby
journal_disposition_factory = JournalDispositionFactory.new
AccountingDocument.new(journal_disposition: journal_disposition_factory.create(:sale), total: '56.23')
```

## But wait, that's more code!

Sure - there is more code after our refactoring. 

However, software design is more that just reducing lines of code.

* Whenever we change a file, we risk breaking other things in the same file.
* Whenever we change a file that someone else is working on, we risk a merge.
* The more things a file does, the harder it is to understand.

Instead, it is desirable to break code apart into lego bricks. (We will cover this in more detail later).

## Exercises

* Do the [Video Store Kata](./katas/video-store), and consider how you could build taking advantage of polymorphism.

