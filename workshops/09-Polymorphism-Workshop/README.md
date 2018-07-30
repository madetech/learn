# Polymorpism

One fundamental feature of object-oriented programming is _polymorphism_.

Polymorphism is a fancy term to describe how multiple Concrete types can conform to an Abstract Interface, and be used to switch out behaviours at runtime.

Let's explore this with an example.

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

This code is not Polymorphic. 


## The problem

It violates the Open-Closed Principle. Potentially, it also the Single Responsibility too.

Every time we need to introduce a new type of `AccountingDocument`, we're going to need to modify this class. 
What's more it will be a magnet for an ever growing number of journal representations, for an ever growing number of those document types.

## An alternative

Instead, we can use polymorphism:

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

If we want to reconstruct polymorphic behaviours from data stored in a database,
we need a mapping between the `data`: type (a string) and the `behaviour`: the appropriate Ruby object.  

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

