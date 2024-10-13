©2012-2015 - Laurent Pointal Mémento v2.0.6 **Python 3 Cheat Sheet** *Latest version on:*

License Creative Commons Attribution 4 *https://perso.limsi.fr/pointal/python:memento*

*integer, float, boolean, string, bytes* **Base Types** ◾ **ordered sequences**, fast index access, repeatable values **Container Types ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.001.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.002.png)int 783 0 -192 0b010 0o642 0xF3 list [1,5,9] ["x",11,8.9] ["mot"] []**

**float 9.23** *ze***0***r***.***o***0 -1.7e-6***binary octal hexa* **tuple (1,5,9) 11,"y",7.4 ("mot",) ()**

**bool True False** ×10-6 *Non modifiable values (immutables)* ☝ *expression with only comas →***tuple**

*escaped new line* **"""X\tY\tZ** ◾ **key containers**, no *a priori* order,* fast key access, each key is unique **b"""" str "One\nTwo"** *Multiline string:* **str bytes** *(ordered sequences of chars / bytes)*

**'I\'m' 1\t2\t3""" dictionary dict {"key":"value"} dict(a=3,b=4,k="v") {}** *escaped* **'** *escaped tab (key/value associations)***{1:"one",3:"three",2:"two",3.14:"π"}**

**bytes b"toto\xfe\775" collection set {"key1","key2"} {1,9,3,0} set()**

*hexadecimal octal* ☝ *immutables* ☝ *keys*=*hashable values (base types, immutables…)* **frozenset** *immutable set empty for variables, functions,* **Identifiers int("15")** → **15 type(***expression***) Conversions![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.003.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.004.png)**

*modules, classes… names* **int("3f",16)** → **63** can specify integer number base in 2nd parameter

**a**◽ **…**d**z**ia**A**cr**…**it**Z\_**ics faolllolowweedd bubyt s**a**h**…**o**zA**uld **…**be **Z\_0**av**…**oi**9**ded **int(15.56)** → **15** truncate decimal part

- language keywords forbidden **float("-11.24e8")** → **-1124000000.0**
- lower/UPPER case discrimination **round(15.56,1)**→ **15.6** rounding to 1 decimal (0 decimal → integer number)

☺ **a toto x7 y\_max BigOne bool(x) False** for null **x**, empty container **x** , **None** or **False** **x**; **True** for other **x**

☹ **~~8y~~ ~~and~~ ~~for~~ str(x)**→ **"…"** representation string of **x** for display *(cf. formatting on the back)*

**chr(64)**→**'@' ord('@')**→**64** code ↔ char

- **Variables assignment repr(x)**→ **"…"** *literal*representation string of **x**
- assignment ⇔ **binding** of a *name* with a *value* **bytes([72,9,64])** → **b'H\t@'**

*12)) e avsasilgunamtioennt  iof rn oigrdhet sr wideit eh xlpefrtesssideion nvaamluees* **list("abc")** → **['a','b','c']**

**x=1.2+8+sin(y) dict([(3,"three"),(1,"one")])** → **{1:'one',3:'three'} a=b=c=0** *assignment to same value* **set(["one","two"])** → **{'one','two'}**

**y,z,r=9.2,-7.6,0** *multiple assignments separator* **str** and *sequence of* **str** → *assembled* **str**

**a,b=b,a** *values swap* **':'.join(['toto','12','pswd'])** → **'toto:12:pswd'**

**a,\*b=seq** *unpacking of sequence in* **str** *splitted on whitespaces* → **list** of **str**

**\*a,b=seq** *item and list* **"words with  spaces".split()** → **['words','with','spaces'] xx-=+=23** a**\*=/=**nd **"1,4,8,2".split(",")** → **['1','4','8','2']**

**str** *splitted on separator* **str** → **list** *of* **str**

**x=None** *id«nueccrnreedmmefieennntet  d⇔⇔»* **xx***c***=***o***=***n***xx***st***+-***a***3***n***2***t value* **%=** sequence of one type → **list** of another type *(via list comprehension)*

**del x** *remove name* **x** … **[int(x) for x in ('1','29','-3')]** → **[1,29,-3]**

*for lists, tuples, strings, bytes…*  **Sequence Containers Indexing![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.005.png)**

|<p>*negative index positive index*</p><p>**lst =**</p><p>*positive slice negative slice*</p><p>**-**</p>|<p>**-5**</p><p>**0 [10,** </p><p>**0 5**</p><p>**-**</p>|<p>**-4 1**</p><p>**20, 3**</p><p>**1 4**</p><p>**-**</p>|<p>**-3**</p><p>**2 0, 40,**</p><p>**2 3**</p><p>**-**</p>|<p>**-2 3**</p><p>` `**50]**</p><p>**3 2**</p><p>**-**</p>|<p>**-1 4**</p><p>**4 5 1**</p>|
| - | - | -: | - | -: | :- |

**Items count** Individual access to **items** via **lst[***index***]**

**len(lst)→5 lst[0]→10** *⇒ first one* **lst[1]→20**

**lst[-1]→50** *⇒ last one* **lst[-2]→40**

- **index from 0**

*On mutable sequences (***list** *), remove with* **del lst[3]** *and modify with assignment* **lst[4]=25**

(here from 0 to 4)

Access to **sub-sequences** via **lst[***start slice***:***end slice***:***step***]**

**lst[:-1]→[10,20,30,40] lst[::-1]→[50,40,30,20,10] lst[1:3]→[20,30] lst[:3]→[10,20,30] lst[1:-1]→[20,30,40] lst[::-2]→[50,30,10] lst[-3:-1]→[30,40] lst[3:]→[40,50] lst[::2]→[10,30,50] lst[:]→[10,20,30,40,50]** *shallow copy of sequence*

*Missing slice indication → from start / up to end.*

**a and b** logical a**B**n**o**d**o***b***l***o***e***th***a***),s***n** *irm* **L***emul***o** *toa***g** *ve-***ic** *with*   **del***st*** *a***lst***teme***[***n***3***t b***:S5***lo***t]a***c  k***t***a***e** *1n***m***d…***e***m***n***o***t** *di***s** *f* **B***y w***lo** *it***c** *h* **k** *a***s** *ssigmon***from***mdeunlte****   **lsttrmonmoduc[***⇔***1:***fil***4***e****  **]=truc.pyim[15,25]***→→***po***daci***r***rcee***t** *cst*** *sa v***nom1***cicaes***monmod***s to***,** *n***nom2** *am***.***es***n***, r***o** *e***asm1***na  m* **fct***…ing with* **as**

*On mutable sequences (***list**

**Modules/Names Imports** Comparisons : **<**  **>**  **<=**  **>=**  **==**  **!=**

*(boolean results)* ≤ ≥ = ≠ *parent statement***:**

**a or b** logical or *oonr be ootrh other***   *parent statement***: import***st*☝*a*m*te*o*m*d*e*u*n*le*t****  s*b* a**monmod***l*n*o*d p*ck*a*e*c*x*k*e*a*c*g*u*e *t*s*e*  *d*se *o*ar*n*c *l*h*y*ed in *python path* (cf **sys.path**)

*-neously* **⁝**

*statement block2… **if** a condition is true* **Conditional Statement**

- pitfall :* **and** *and* **or** *return value of* **a** *or*  ⁝

*of* **b** *(under shortcut evaluation).*  **if** *logical condition***:** yes no yes

*⇒ ensure that* **a** *and* **b** *are booleans. next statement after block 1 statements block* ? ?no

**not a** logical not

**True** True and False constants ☝ *configure editor to insert 4 spaces in*  final *else*. Only the block of first true  **if age<=18:**

Can go with several *elif*, *elif*... and only one 

**False  state="Kid"**

*place of an indentation tab.* condition is executed. **elif age>65:**

- *floating numbers… approximated values angles in radians* **Maths** ☝ *with a var* **x***:*  **state="Retired" if bool(x)==True:** ⇔ **if x: else:**

OPrpeiorraittyo r**(**s:…**+)**  **-**  **\***×  ÷**/**   **//**   **%   \*\***ab **fromsin ( pimath/4)→im0.707port …sin,pi… if bool(x)==False:** ⇔ **if not x:  state="Active"**

integer ÷ ÷ remainder **cos(2\*pi/3)→-0.4999…** Signaling an error: **Exceptions on Errors**

**@** → matrix × *python3.5+***numpy sqrt(81)→9.0    √ raise** *ExcClass(…) error* **(1+5.3)\*2→12.6 log(e\*\*2)→2.0** Errors processing: *normal processing*

**abs(-3.2)→3.2 ceil(12.5)→13 try: raise** *X() error***raise round(3.57,1)→3.6 floor(12.5)→12** *normal procesising block  processing processing*

**pow(4,3)→64.0** modules **math**, **statistics**, **random**, **except** *Exception* **as e:**

- *usual order of operations* **decimal**, **fractions**, **numpy**, *etc. (cf. doc) error processing block* ☝*in* **finally***all cases. block for final processing* 

_statements block executed **as long as**_ **Conditional Loop Statement** _statements block executed **for each**_  **Iterative Loop Statement ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.006.png)**_condition is true item of a container or iterator_

**while** *logical condition***:** yes ? **Loop Control for var in** *sequence***:** next … *statements block* no **break**  *immediate exit statements block* finish

**continue** *next iteration*

**s = 0** *initializations **before** the loop* ☝ **else** *block for **normal***  Go over sequence's **values**

**i = 1** *condition with a least one variable value (here* **i** *) loop exit.* **s = "Some text"** *initializations **before** the loop*

*Algo:*  **cnt = 0**

**whiles = i <= s + 100i\*\*:2** *s*= *i*∑= 100 *i*2 **for c in s:**

*loop variable, **assignment managed by*** **for *statement***

**i = i + 1** ☝ *make condition variable change!* **if c == "e":** *Algo: count* **print("sum:",s)** *i*=1 **cnt = cnt + 1** *number of*  e* 

**print("found",cnt,"'e'")** *in the string.* **print("v=",3,"cm:",x,",",y+4) Display** loop on dict/set ⇔ loop on keys sequences

use *slices* to loop on a subset of a sequence

items to display : literal values, variables, expressions Go over sequence's **index**

- modify item at index

**print**◽**sep=** **" "**options:  items separator, default space ◽ access items around index (before / after)

- **end="\n"** end of print, default new line **lstlost = =[11,18,9,12,23,4,17][]**
- **file=sys.stdout** print to file, default standard output **for idx in range(len(lst)):** *Algo: limit values greater* **s = input("Instructions:") Input val = lst[idx]** *than 15, memorizing*

**if val > 15:** *of lost values.*

- **input** always returns a **string**, convert it to required type **lost.append(val)**

(cf. boxed *Conversions* on the other side). **lst[idx] = 15**

**print("modif:",lst,"-lost:",lost)**

**len(c)**→ items count **Generic Operations on Containers**

**min(c)  max(c)  sum(c)** *Note: For dictionaries and sets, these* Go**for** si** m**idx**ulta**,**neo**val**usl** y**in**ove**  r**enumerate**sequence's **in(dlstex** an**):**d **values**: **sorted(c)**→ **list** sorted *copy operations use **keys**.* 

**val in c** → boolean, membership operator **in** (absence **not in**) **range(***[start,] end [,step]***) Integer Sequences enumerate(c)**→ *iterator* on (index, value)

**zip(c1,c2…)**→ *iterator* on tuples containing **c** items at same index ☝ *start* default 0, *end* not included in sequence, *step* signed, default 1

**i  range(5)**→ 0 1 2 3 4 **range(2,12,3)**→ 2 5 8 11 **all(c)**→ **True** if **all** **c** items evaluated to true, else **False range(3,8)**→ 3 4 5 6 7 **range(20,5,-5)**→ 20 15 10

**any(c)**→ **True** if **at least one** item of **c** evaluated true, else **False range(len(***seq***))***→ sequence of index of values in seq*

*Specific to **ordered sequences containers** (lists, tuples, strings, bytes…)* ☝ *range provides an immutable sequence of int constructed as needed* **reversed(c)***→ inversed iterator* **c\*5**→ duplicate **c+c2**→ concatenate

**c.index(***val***)***→ position* **c.count(***val***)***→ events count* function name (identifier) **Function Definition import copy** named parameters

**cocoppyy..copydeepcopy(c)**→ s**(c**h**)**al→ dlow ceeop pcyoopfy c oofn ctaoinnteariner **"""documentation""" fct**

**def fct(x,y,z):**

- *statements block, res computation, etc.*

☝**lst**modi**.**f**append**y original l**(**i*va*st *l***)** add item at end **Operations on Lists return res** result value of the call, if no computed

result to return: **return None lst.extend(***seq***)**  add sequence of items at end ☝ parameters and all

**lst.insert(***idx***,***val***)** insert item at index variables of this block exist only *in* the block and *during* the function **lst.remove(***val***)** remove first item with value *val* call (think of a “black box*”*)

**lst.pop(***[idx]***)***→value* remove & return item at index *idx* (default last) Advanced: **def fct(x,y,z,\*args,a=3,b=5,\*\*kwargs): lst.sort()  lst.reverse()** sort / reverse liste *in place \*args variable positional arguments (→***tuple***), default values,* 

*\*\*kwargs variable named arguments (→***dict***)*

**Operations on Dictionaries Operations on Sets**

**d[***key***]=***value* **d.clear()** Operators:  **r = fct(3,i+2,2\*i) Function Call d[***key***]***→ value* **del d[***key***] &** → intersection *one argument per*

**dd..keysupdate()(***d2***)** associations **< <= > >=** → inclusion relations *srteoturarngee/d usvea loufe parameter*

` `**|** → union (vertical bar char)

update/add  **- ^** → difference/symmetric diff. ☝ this is the use of function  *Advanced:*  **fct() fct d.values()** *→iterable views on Operators also exist as methods.* name *with parentheses*  *\*sequence* 

**d.items()** *keys/values/associations* which does the call *\*\*dict*

**d.pop(***key[,default]***)***→ value* **s.update(***s2***) s.copy() Operations on Strings d.popitem()***→ (key,value)* **s.add(***key***) s.remove(***key***) s.startswith(***prefix[,start[,end]]***)**

**d.get(***key[,default]***)***→ value* **s.discard(***key***) s.clear() s.endswith(***suffix[,start[,end]]***) s.strip(***[chars]***) d.setdefault(***key[,default]***)***→value* **s.pop() s.count(***sub[,start[,end]]***) s.partition(***sep***)***→ (before,sep,after)*

**s.index(***sub[,start[,end]]***) s.find(***sub[,start[,end]]***)**

*storing data on disk, and reading it back* **Files s.is…()**  *tests on chars categories (ex.* **s .isalpha()***)*

**f = open("file.txt","w",encoding="utf8") s.upper()   s.lower()   s.title()   s.swapcase() s.casefold()   s.capitalize()   s.center(***[width,fill]***)** 

file **variable**  **name** of file opening **mode encoding** of **s.ljust(***[width,fill]***)  s.rjust(***[width,fill]***)  s.zfill(***[width]***)** for operations on disk ◽ **'r'** read chars for *text* **s.encode(***encoding***)   s.split(***[sep]***)  s.join(***seq***)**

(+path…) ◽ **'w'** write *files*: 

- **'a'** append utf8  ascii  formating directives values to format **Formatting**

cf. modules **os**,  **os.path** and **pathlib** ◽ …**'+' 'x' 'b' 't'** latin1  …

**"modele{} {} {}".format(x,y,r) str**

**writing** ☝ *read empty string if end of file* **reading "{** *selection***:** *formatting***!** *conversion***}"**

**f.write("coucou") f.read(***[n]***)** *→ next chars*

**f.writelines(***list of lines***)** *if n not specified, read up to end!* ◽ **Selection** : **"{:+2.3f}".format(45.72793)**

**f.readlines(***[n]***)** *→* **list** *of next lines*  **2** →**'+45.728'**

**f.readline()** *→ next line*  **nom "{1:>10s}".format(8,"toto")**

- *text mode* **t** *by default (read/write* **str***), possible binary*   **0.nom** →**'      toto'**

*mode* **b** *(read/write* **bytes***). **Convert from/to required type**!*  **4[key] "{x!r}"**

**f.close()** ☝ dont forget to **close the file** after use !**  ◽ **F0[2]ormatting** : →**'"I\'m".format' (x="I'm") f.flush()** write cache **f.truncate(***[size]***)** resize *fill char  alignment  sign   mini width***.***precision~maxwidth    type*

*reading/writing progress sequentially in the file, modifiable with:*

**f.tell()***→position* **f.seek(***position[,origin]***) <**in t**>**e g**^**e r**=**: **b** bi**+**n a**-**ry*s*,*p***c***a* *c*c*e*har, **d** d**0** aectismtaarlt f(doerf fiaulllitn),g**o**w oitchta 0l, **x** or **X** hexa…

Very common: opening with a guarded block  **with open(…) as f:** float: **e** or **E** exponential, **f** or **F** fixed point, **g** or **G** appropriate (default), (automatic closing) and reading loop on lines   **for line in f:** string: **s** … **%** percent

of a text file: **#** *processing of***line** ◽ **Conversion** : **s** (readable text) or **r** (literal representation)

Python Cheat Sheet![ref1]![ref2]

by Dave Child (DaveChild) via cheatography.com/1/cs/19/
|Python sys Variables||
| - | :- |
|argv|Command line args|
|builtin\_module\_‐ names|Linked C modules|
|byteorder|Native byte order|
|check\_interval|Signal check frequency|
|exec\_prefix|Root directory|
|executable|Name of executable|
|exitfunc|Exit function name|
|modules|Loaded modules|
|path|Search path|
|platform|Current platform|
|stdin, stdout, stderr|File objects for I/O|
|version\_info|Python version info|
|winver|Version number|

Python sys.argv![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.009.png)

sys.argv[0] foo.py sys.argv[1] bar sys.argv[2] -c sys.argv[3] qux sys.argv[4] --h

sys.argv for the command:

$ python foo.py bar -c qux --h![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.010.png)



|Python os Variables|
| - |
|altsep Alternative sep|
|curdir Current dir string|
|defpath Default search path|
|devnull Path of null device|
|extsep Extension separator|
|linesep Line separator|
|name Name of OS|
|pardir Parent dir string|
|pathsep Patch separator|
|sep Path separator|
|Registered OS names: "posix", "nt", "mac", "os2", "ce", "java", "riscos"|

By Dave Child (DaveChild) ![ref3]cheatography.com/davechild/ aloneonahill.com

 

|Python Class Special Methods|
| - |
|\_\_new\_\_(cls) \_\_lt\_\_(self, other)|
|\_\_init\_\_(self, args) \_\_le\_\_(self, other)|
|\_\_del\_\_(self) \_\_gt\_\_(self, other)|
|\_\_repr\_\_(self) \_\_ge\_\_(self, other)|
|\_\_str\_\_(self) \_\_eq\_\_(self, other)|
|\_\_cmp\_\_(self, other) \_\_ne\_\_(self, other)|
|\_\_index\_\_(self) \_\_nonzero\_\_(self)|
|\_\_hash\_\_(self)|
|\_\_getattr\_\_(self, name)|
|\_\_getattribute\_\_(self, name)|
|\_\_setattr\_\_(self, name, attr)|
|\_\_delattr\_\_(self, name)|
|\_\_call\_\_(self, args, kwargs)|



|Python List Methods||
| - | :- |
|append(item)|pop(position)|
|count(item)|remove(item)|
|extend(list)|reverse()|
|index(item)|sort()|
|insert(position, item)||


|Python String Methods||
| - | :- |
|capitalize() \*|lstrip()|
|center(width)|partition(sep)|
|count(sub, start, end)|replace(old, new)|
|decode()|rfind(sub, start ,end)|
|encode()|rindex(sub, start, end)|
|endswith(sub)|rjust(width)|
|expandtabs()|rpartition(sep)|
|find(sub, start, end)|rsplit(sep)|
|index(sub, start, end)|rstrip()|
|isalnum() \*|split(sep)|
|isalpha() \*|splitlines()|
|isdigit() \*|startswith(sub)|
|islower() \*|strip()|
|isspace() \*|swapcase() \*|

Published 19th October, 2011. Last updated 3rd November, 2020. Page 1 of 2.![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.012.png)

Python String Methods (cont) istitle() \* title() \* isupper() \* translate(table) join() upper() \* ljust(width) zfill(width) lower() \*

Methods marked \* are locale dependant for 8-bit strings.![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.013.png)

Python File Methods![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.014.png)

close() readlines(size) flush() seek(offset) fileno() tell()

isatty() truncate(size) next() write(string) read(size) writelines(list) readline(size)



|Python Indexes and Slices|
| - |
|len(a) 6|
|a[0] 0|
|a[5] 5|
|a[-1] 5|
|a[-2] 4|
|a[1:] [1,2,3,4,5]|
|a[:5] [0,1,2,3,4]|
|a[:-2] [0,1,2,3]|
|a[1:3] [1,2]|
|a[1:-1] [1,2,3,4]|
|b=a[:] Shallow copy of a|
|Indexes and Slices of a=[0,1,2,3,4,5]|

Python Datetime Methods![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.015.png)

today() fromordinal(ordinal) now(timezoneinfo) combine(date, time) utcnow() strptime(date, format) fromtimestamp(timestamp) utcfromtimestamp(timestamp)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.016.png)

Sponsored by ApolloPad.com Everyone has a novel in them. Finish Yours!

https://apollopad.com

Python Cheat Sheet![ref1]![ref2]

by Dave Child (DaveChild) via cheatography.com/1/cs/19/
|Python Time Methods||
| - | :- |
|replace()|utcoffset()|
|isoformat()|dst()|
|\_\_str\_\_()|tzname()|
|strftime(format)||


|Python Date Formatting|
| - |
|%a Abbreviated weekday (Sun)|
|%A Weekday (Sunday)|
|%b Abbreviated month name (Jan)|
|%B Month name (January)|
|%c Date and time|
|%d Day (leading zeros) (01 to 31)|
|%H 24 hour (leading zeros) (00 to 23)|
|%I 12 hour (leading zeros) (01 to 12)|
|%j Day of year (001 to 366)|
|%m Month (01 to 12)|
|%M Minute (00 to 59)|
|%p AM or PM|
|%S Second (00 to 61⁴)|
|%U Week number¹ (00 to 53)|
|%w Weekday² (0 to 6)|
|%W Week number³ (00 to 53)|
|%x Date|
|%X Time|
|%y Year without century (00 to 99)|
|%Y Year (2008)|
|%Z Time zone (GMT)|
|%% A literal "%" character (%)|
|<p>¹ Sunday as start of week. All days in a new year preceding the first Sunday are considered to be in week 0.</p><p>² 0 is Sunday, 6 is Saturday.</p><p>³ Monday as start of week. All days in a new year preceding the first Monday are considered to be in week 0.</p><p>⁴ This is not a mistake. Range takes account of leap and double-leap seconds.</p>|

By Dave Child (DaveChild) Published 19th October, 2011. Sponsored by ApolloPad.com ![ref3]cheatography.com/davechild/ Last updated 3rd November, 2020. Everyone has a novel in them. Finish aloneonahill.com Page 2 of 2. Yours!

https://apollopad.com


**Python For Data Science***Cheat Sheet* **Lists Also see NumPy Arrays Libraries ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.017.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.018.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.019.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.020.png)**

Python Basics >>> a = 'is'  **Import libraries** 

\>>> b = 'nice' >>> import numpy Data analysis Machine learning Learn More Python for Data Science Interactively at  www.datacamp.com >>> my\_list = ['my', 'list', a, b] >>> import numpy as np ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.021.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.022.png)

\>>> my\_list2 = [[4,5,6,7], [3,4,5,6]]  **Selective import ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.023.png)**

\>>> from math import pi Scientific computing 2D plo ing **Variables and Data Types  Selecting List Elements Index starts at 0**

**Install Python**

|<p>`  `**Subset**</p><p>>>> my\_list[1]</p><p>>>> my\_list[-3]</p><p>`  `**Slice**</p><p>>>> my\_list[1:3] >>> my\_list[1:] >>> my\_list[:3] >>> my\_list[:]</p><p>`  `**Subset Lists of Lists** >>> my\_list2[1][0] >>> my\_list2[1][:2]</p>|<p>Select item at index 1 Select 3rd last item</p><p>Select items at index 1 and 2 Select items a er index 0 Select items before index 3 Copy my\_list</p><p>my\_list[list][itemOfList]</p>|
| - | :- |

**Variable Assignment**

\>>> x=5 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.024.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.025.png)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.026.png)

\>>> x 

` `5 

**Calculations With Variables** 

Leading open data science platform Free IDE that is included  Create and share powered by Python with Anaconda documents with live code, 

|<p>>>> x+2                7</p><p>>>> x-2               </p><p>3</p><p>>>> x\*2                10</p><p>>>> x\*\*2              </p><p>` `25</p><p>>>> x%2                1</p><p>>>> x/float(2)        </p><p>` `2.5</p>|<p>` `Sum of two variables</p><p>` `Subtraction of two variables</p><p>` `Multiplication of two variables  Exponentiation of a variable</p><p>` `Remainder of a variable   Division of a variable</p>|
| :- | - |

visualizations, text, ...

**Numpy Arrays Also see Lists List Operations** >>> my\_list = [1, 2, 3, 4]

\>>> my\_array = np.array(my\_list)

\>>> my\_list + my\_list >>> my\_2darray = np.array([[1,2,3],[4,5,6]])

['my', 'list', 'is', 'nice', 'my', 'list', 'is', 'nice'] **Selecting Numpy Array Elements** >>> my\_list \* 2

**Index starts at 0**



|<p>`  `**Subset**</p><p>>>> my\_array[1]</p><p>`   `2</p><p>`  `**Slice**</p><p>>>> my\_array[0:2]</p><p>`   `array([1, 2])</p><p>`  `**Subset 2D Numpy arrays** >>> my\_2darray[:,0]</p><p>`   `array([1, 4])</p>|<p>Select item at index 1</p><p>Select items at index 0 and 1 my\_2darray[rows, columns]</p>|
| - | - |

['my', 'list', 'is', 'nice', 'my', 'list', 'is', 'nice']

\>>> my\_list2 > 4

True **Types and Type Conversion**

**List Methods**

|` `str()   int()   float()  bool() |<p>`   `'5', '3.45', 'True'    5, 3, 1 </p><p>`    `5.0, 1.0</p><p>`   `True, True, True</p>|Variables to strings Variables to integers Variables to floats Variables to booleans|
| - | :- | :- |
|<p>>>> my\_list.index(a)</p><p>>>> my\_list.count(a)</p><p>>>> my\_list.append('!') >>> my\_list.remove('!') >>> del(my\_list[0:1]) >>> my\_list.reverse() >>> my\_list.extend('!') >>> my\_list.pop(-1)</p><p>>>> my\_list.insert(0,'!') >>> my\_list.sort()</p>|<p>Get the index of an item Count an item</p><p>Append an item at a time Remove an item Remove an item</p><p>Reverse the list</p><p>Append an item</p><p>Remove an item</p><p>Insert an item</p><p>Sort the list</p>|
| - | :- |

**Numpy Array Operations**

\>>> my\_array > 3

`  `array([False, False, False,  True], dtype=bool)

\>>> my\_array \* 2

**Asking For Help**

array([2, 4, 6, 8])

\>>> help(str)

\>>> my\_array + np.array([5, 6, 7, 8])

**Strings**  array([6, 8, 10, 12])

\>>> my\_string = 'thisStringIsAwesome' **String Operations Index starts at 0 Numpy Array Functions** >>> my\_string

|<p>>>> my\_array.shape</p><p>>>> np.append(other\_array) >>> np.insert(my\_array, 1, 5) >>> np.delete(my\_array,[1]) >>> np.mean(my\_array)</p><p>>>> np.median(my\_array)</p><p>>>> my\_array.corrcoef()</p><p>>>> np.std(my\_array)</p>|<p>Get the dimensions of the array Append items to an array Insert items in an array</p><p>Delete items in an array</p><p>Mean of the array</p><p>Median of the array Correlation coefficient</p><p>Standard deviation</p>|
| - | :- |

'thisStringIsAwesome' >>> my\_string[3] >>> my\_string[4:9]

**String Operations**

**String Methods**

\>>> my\_string \* 2

|<p>>>> my\_string.upper()</p><p>>>> my\_string.lower()</p><p>>>> my\_string.count('w')</p><p>>>> my\_string.replace('e', 'i') >>> my\_string.strip()</p>|String to uppercase String to lowercase Count String elements Replace String elements Strip whitespaces|
| - | :- |

`  `'thisStringIsAwesomethisStringIsAwesome'

\>>> my\_string + 'Innit'

`  `'thisStringIsAwesomeInnit'

\>>> 'm' in my\_string

**DataCamp**

`  `True

**Learn Python for Data Science Interactively**

![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.027.png)

**Python ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.028.png)**Cheat Sheet

Python 3 is a truly versatile pro rammin  lan ua e, loved both by web developers, data scientists and software 

en ineers. And there are several  ood reasons for that!

- Python is open-source and has a  reat support community, 
- Plus, extensive support libraries. 
- Its data structures are user-friendly.

**Once you  et a han  of it, your development speed and productivity will soar!**

**Table of Contents![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.029.png)**

3  Python Basics: Gettin  Started
3  Main Python Data Types
3  How to Create a Strin  in Python
3  Math Operators
3  How to Store Strin s in Variables
3  Built-in Functions in Python

**10** How to Define a Function

**12** List

**16** List Comprehensions

16  Tuples
16  Dictionaries

**19** If Statements (Conditional Statements) in Python

21  Python Loops
21  Class
21  Dealin  with Python Exceptions (Errors)
21  How to Troubleshoot the Errors
21  Conclusion

**Python** Cheat Sheet 13

**Python Basics: Gettin  Started**

Most Windows and Mac computers come with Python pre-installed. You can check that via a Command Line search. The particular appeal of Python is that you can write a pro ram in any text editor, save it in .py format and then run via a Command Line. But as you learn to write more complex code or venture into data science, you mi ht want to switch to an IDE or IDLE.

**What is IDLE (Inte rated Development and Learnin )**

IDLE (Inte rated Development and Learnin  Environment) comes with every Python installation. Its advanta e over other text editors is that it hi hli hts important keywords (e. . strin  functions), makin  it easier for you to interpret code.

Shell is the default mode of operation for Python IDLE. In essence, it’s a simple loop that performs that followin  four steps:

- Reads the Python statement
- Evaluates the results of it 
- Prints the result on the screen
- And then loops back to read the next statement. 

Python shell is a  reat place to test various small code snippets.

**Main Python Data Types**

Every value in Python is called an  **object** . And every object has a specific data type. The three most-used data types are as follows:

**Inte ers (int)** — an inte er number to represent an object such as  number 3 .

**Integers -2, -1, 0, 1, 2, 3, 4, 5![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.030.png)**

**Floatin -point numbers (float)** — use them to represent floatin -point numbers.

**Floating-point numbers -1.25, -1.0, --0.5, 0.0, 0.5, 1.0, 1.25![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.031.png)**

**Strin s** — codify a sequence of characters usin  a strin . For example, the word 

` `hello . In Python 3, strin s are immutable. If you already defined one, you cannot chan e it later on.  

While you can modify a strin  with commands such as **replace()** or **join()**, they will create a copy of a strin  and apply modification to it, rather than rewrite the ori inal one.

**Strings ‘yo’, ‘hey’, ‘Hello!’, ‘what’s up!’![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.032.png)**

Plus, another three types worth mentionin  are **list**s, **dict**ionaries, and **tuple**s. All of them are discussed in the next sections. 

For now, let’s focus on the **strin s**.

**How to Create a Strin  in Python**

You can create a strin  in three ways usin  **sin le**, **double** or **triple** quotes. Here’s an example of every option:

**Basic Python Strin** 

**my\_string = “Let’s Learn Python!” ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.033.png)**

**another\_string = ‘It may seem difficult first, but you can do it!’** 

**a\_long\_string = ‘’’Yes, you can even master multi-line strings** 

` `**that cover more than one line** 

` `**with some practice’’’**

**IMP!** Whichever option you choose, you should stick to it and use it consistently within your pro ram. 

As the next step, you can use the **print()** function to output your strin  in the console window. This lets you review your code and ensure that all functions well. 

Here’s a snippet for that: 

**print(“Let’s print out a string!”)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.034.png)**

**Strin  Concatenation**

The next thin  you can master is **concatenation** — a way to add two strin s to ether usin  the  +  operator. Here’s how it’s done: 

**string\_one = “I’m reading “ ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.035.png)string\_two = “a new great book!” string\_three = string\_one + string\_two**

**Note:** You can’t apply + operator to two different data types e. . strin  + inte er. If you try to do that, you’ll  et the followin  Python error: 

**TypeError: Can’t convert ‘int’ object to str implicitly![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.036.png)**

**Strin  Replication**

As the name implies, this command lets you repeat the same strin  several times. This is done usin  **\*** operator. Mind that this operator acts as a replicator only with strin  data types. When applied to numbers, it acts as a multiplier. 

Strin  replication example:

**‘Alice’ \* 5 ‘AliceAliceAliceAliceAlice’![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.037.png)**

And with print ()

**print(“Alice” \* 5)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.038.png)**

And your output will be Alice written five times in a row.

**Math Operators**

For reference, here’s a list of other math operations you can apply towards numbers:

**Operators Operation Example![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.039.png)**

**\*\* Exponent 2 \*\* 3 = 8 % Modulus/Remainder 22 % 8 = 6 // Integer division 22 // 8 = 2 / Division 22 / 8 = 2.75 \* Multiplication 3 \* 3 = 9 - Subtraction 5 - 2 = 3**

+ **Addition 2 + 2 = 4**

**How to Store Strin s in Variables**

**Variables** in Python 3 are special symbols that assi n a specific stora e location to 

a value that’s tied to it. In essence, variables are like special labels that you place on some value to know where it’s stored. 

Strin s incorporate data. So you can  pack  them inside a variable. Doin  so makes it easier to work with complex Python pro rams. 

Here’s how you can store a strin  inside a variable.

**my\_str = “Hello World”![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.040.png)**

Let’s break it down a bit further:

- my\_str is the variable name. 
- = is the assi nment operator. 
- Just a random strin   is a value you tie to the variable name. 

Now when you print this out, you receive the strin  output.

**print(my\_str)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.041.png)**

- **Hello World![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.042.png)**

See? By usin  variables, you save yourself heaps of effort as you don’t need to retype the complete strin  every time you want to use it.

**Built-in Functions in Python**

You already know the most popular function in Python — **print()**. Now let’s take a look at its equally popular cousins that are in-built in the platform.

**Input() Function**

**input()** function is a simple way to prompt the user for some input (e. . provide their name). All user input is stored as a strin .

Here’s a quick snippet to illustrate this: 

**name = input(“Hi! What’s your name? “) print(![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.043.png)“Nice to meet you “ + name + “!”)** 

**age = input(“How old are you “)** 

**print(“So, you are already “ + str(age) + “ years old, “** 

+ **name + “!”)**

When you run this short pro ram, the results will look like this:

**Hi! What’s your name? “Jim”![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.044.png)**

**Nice to meet you, Jim!**

**How old are you? 25**

**So, you are already 25 years old, Jim!**

**len() Function**

**len()** function helps you find the len th of any strin , list, tuple, dictionary, or another data type. It’s a handy command to determine excessive values and trim them to optimize the performance of your pro ram.

Here’s an input function example for a strin :

- ***testing len() ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.045.png)***

**str1 = “Hope you are enjoying our tutorial!” print(“The length of the string is :”, len(str1))**

Output:

**The len th of the strin  is: 35![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.046.png)**

**filter()**

Use the **Filter()** function to exclude items in an iterable object (lists, tuples, dictionaries, etc)

**ages = [5, 12, 17, 18, 24, 32] ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.047.png)**

**def myFunc(x):   if x < 18:** 

`    `**return False   else:** 

`    `**return True** 

**adults = filter(myFunc, ages)** 

**for x in adults:   print(x)**

(Optional: The PDF version of the checklist can also include a full table of all the in-built functions).

**How to Define a Function**

Apart from usin  in-built functions, Python 3 also allows you to define your own functions for your pro ram. 

To recap, a **function** is a block of coded instructions that perform a certain action. Once properly defined, a function can be reused throu hout your pro ram i.e. re-use the same code. 

Here’s a quick walkthrou h explainin  how to define a function in Python:

First, use **def** keyword followed by the function **name()**:. The parentheses can contain any parameters that your function should take (or stay empty).

**def name():![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.048.png)**

Next, you’ll need to add a second code line with a 4-space indent to specify what this function should do.

**def name(): ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.049.png)**

`    `**print(“What’s your name?”)**

Now, you have to call this function to run the code.

**name.py ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.050.png)**

**def name():** 

`    `**print(“What’s your name?”)** 

**hnealmleo(())**

Now, let’s take a look at a defined function with a parameter — an entity, specifyin  an ar ument that a function can accept.

**def add\_numbers(x, y, z):     a = x + y ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.051.png)**

`    `**b = x + z** 

`    `**c = y + z** 

`    `**print(a, b, c)**

**add\_numbers(1, 2, 3)**

In this case, you pass the number 1 in for the x parameter, 2 in for the y parameter, and 3 in for the z parameter. The pro ram will that do the simple math of addin  up the numbers:

Output: 

**a = 1 + 23 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.052.png)b = 1 + 34 c = 2 + 35**

**How to Pass Keyword Ar uments to a Function**

A function can also accept keyword ar uments. In this case, you can use parameters in random order as the Python interpreter will use the provided keywords to match the values to the parameters.

Here’s a simple example of how you pass a keyword ar ument to a function. 

***#**#  **D**D**e**e**f**f**i**i**n**n**e**e   f**f** u**u** n**n** c**c** t**t** i**i** o**o** n**n**   w**w** i**i** t**t** h**h**   p**p** a**a** r**r** a**a** m**m** e**e** t**t** e**e** r**r** s**s![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.053.png)***

**ddeeff pprroodduucctt\_\_iinnffoo((pprroodduucctt   nn aa mmee,,   pp rr ii cc ee )) ::** 

`    `**pprrii nntt (( “”pPrroodduuccttn  aNmaem:e :“ “ + +p  rp or do ud cuctt \_nnaammee))     pprrii nntt (( “”PPrriicc ee : “  “ + +s  ts rt (r d( op lr li acres))))** 

_**#**#  **C**C**a**a**l**l**l**l  **f**fu**u** n**n** c**c** t**t** i**i** o**o** n**n**   w**w** i**i** t**t** h**h**   p**p** a**a** r**r** a**a** m**m** e**e** t**t** e**e** r**r** s**s**   a**a** s**s** s**s** i**i** g**g** n**n** e**e** d**d**   a**a** s**s**   a**a** b**b** o**o** v**v** e**e**_ **pprroodduucctt\_\_ii nnff oo (( “”WWhhiittee  TT--sShhiirr tt ”: ,  “ 1,5  1d5o)llars)** 

_**#**#  **C**C**a**a**l**l**l**l  **f**f**u**un**n** c**c** t**t** i**i** o**o** n**n**   w**w** i**i** t**t** h**h**   k**k** e**e** y**y** w**w** o**o** r**r** d**d**   a**a** r**r** g**g** u**u** m**m** e**e** n**n** t**t** s**s**_ **pprroodduucctt\_\_ii nnff oo (( pp rr oo dd uu cc tt nn aa mm ee == ””jJeeaannss”“,,   pp rr ii cc ee == 4455))**

Output:

**PrProductname: White Toduct Name: Whit -shire T- tShirt ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.054.png)Price: 15Price: 15**

**PrProductname: Joduct Name: eans  Jeans**

**Price: 45Price: 45**

**Lists**

**Lists** are another cornerstone data type in Python used to specify an ordered sequence of elements. In short, they help you keep related data to ether and perform the same operations on several values at once. Unlike strin s, lists are mutable (=chan eable).

Each value inside a list is called an **item** and these are placed between square brackets.

**Example lists**

**my\_list = [1, 2, 3] ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.055.png)**

**my\_list2 = [“a”, “b”, “c”] my\_list3 = [“4”, d, “book”, 5]**

Alternatively, you can use **list()** function to do the same:

**alpha\_list = list((“1”, “2”, “3”))  print(alpha\_list)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.056.png)**

**How to Add Items to a List**

You have two ways to add new items to existin  lists.  The first one is usin  **append()** function: 

**beta\_list = [“apple”, “banana”, “orange”] beta\_list.append(![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.057.png)“grape”) print(beta\_list)**

The second option is to **insert()** function to add an item at the specified index:

**beta\_list = [“apple”, “banana”, “orange”] beta\_list.insert(![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.058.png)“22, “ gg rr aa pp ee ”” ) print(beta\_list)**

**WebsiteSetup.or**  - Python Cheat Sheet ![ref4]
**Python** Cheat Sheet 25

**How to Remove an Item from a List**

A ain, you have several ways to do so. First, you can use **remove()** function: 

**beta\_list = [“apple”, “banana”, “orange”] beta\_list.remove(![ref5]“apple”) print(beta\_list)**

Secondly, you can use the **pop() function**. If no index is specified, it will remove the last item. 

**beta\_list = [“apple”, “banana”, “orange”] beta\_list.pop() ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.061.png)**

**print(beta\_list)**

The last option is to use **del keyword** to remove a specific item: 

**beta\_list = [“apple”, “banana”, “orange”] ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.062.png)del beta\_list [1]** 

**print(beta\_list)**

P.S. You can also apply del towards the entire list to scrap it. 

**Combine Two Lists** 

To mash up two lists use the + operator.

**my\_list = [1, 2, 3] ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.063.png)**

**my\_list2 = [“a”, “b”, “c”] combo\_list = my\_list + my\_list2 combo\_list** 

**[1, 2, 3, ‘a’, ‘b’, ‘c’]**

**Create a Nested List**

You can also create a list of your lists when you have plenty of them :)

**my\_nested\_list = [my\_list, my\_list2] my\_nested\_list ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.064.png)**

**[[1, 2, 3], [‘a’, ‘b’, ‘c’]]**

**Sort a List**

Use the **sort()** function to or anize all items in your list. 

**alpha\_list = [34, 23, 67, 100, 88, 2] alpha\_list.sort() ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.065.png)**

**alpha\_list** 

**[2, 23, 34, 67, 88, 100]**

**Slice a List**

Now, if you want to call just a few elements from your list (e. . the first 4 items), you need to specify a ran e of index numbers separated by a colon [x:y]. Here’s an example:

**alpha\_list[0:4] [![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.066.png)2, 23, 34, 67]**

**Chan e Item Value on Your List**

You can easily overwrite a value of one list items:

**beta\_list = [“apple”, “banana”, “orange”] beta\_list[![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.067.png)1] = “pear”** 

**print(beta\_list)**

Output:

**[‘apple’, ‘pear’, ‘cherry’]![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.068.png)**

**Loop Throu h the List**

Usin  **for loop** you can multiply the usa e of certain items, similarly to what \* operator does. Here’s an example:

**for x in range(1,4): ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.069.png)**

`    `**beta\_list += [‘fruit’]     print(beta\_list)**

**Copy a List**

Use the built-in **copy()** function to replicate your data:

**beta\_list = [“apple”, “banana”, “orange”] beta\_list = beta\_list.copy() print(beta\_list)![ref5]**

Alternatively, you can copy a list with the **list()** method:

**beta\_list = [“apple”, “banana”, “orange”] beta\_list = list (beta\_list)  print(beta\_list)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.070.png)**

**List Comprehensions**

**List comprehensions** are a handy option for creatin  lists based on existin  lists. When usin  them you can build by usin  **strin s** and **tuples** as well. 

**List comprehensions examples**

**list\_variable = [x for x in iterable]![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.071.png)**

Here’s a more complex example that features math operators, inte ers, and the **ran e()** function: 

**number\_list = [x \*\* 2 for x in range(10) if x % 2 == 0] print(number\_list)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.072.png)**

**Tuples**

Tuples are similar to lists — they allow you to display an ordered sequence of elements. However, they are immutable and you can’t chan e the values stored in a tuple. 

The advanta e of usin  tuples over lists is that the former are sli htly faster. So it’s a nice way to optimize your code. 

**How to Create a Tuple**

**my\_tuple = (1, 2, 3, 4, 5) my\_tuple[![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.073.png)0:3]** 

**(1, 2, 3)**

Note: Once you create a tuple, you can’t add new items to it or chan e it in any other way!

**How to Slide a Tuple**

The process is similar to slicin  lists.

**numbers = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) print(numbers[![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.074.png)1:11:2])**

Output:

**(1, 3, 5, 7, 9)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.075.png)**

**Convert Tuple to a List**

Since Tuples are immutable, you can’t chan e them. What you can do thou h is convert a tuple into a list, make an edit and then convert it back to a tuple. 

Here’s how to accomplish this:

**x = (“apple”, “orange”, “pear”) y = list(x) ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.076.png)**

**y[1] = “grape”** 

**x = tuple(y)** 

**print(x)**

**Dictionaries**

A dictionary holds indexes with keys that are mapped to certain values. These key-value pairs offer a  reat way of or anizin  and storin  data in Python. They are mutable, meanin  you can chan e the stored information. 

A key value can be either a **strin** , **Boolean**, or **inte er**. Here’s an example dictionary illustratin  this:

**Customer 1= {‘username’: ‘john-sea’, ‘online’: false, ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.077.png)‘friends’:100}**

**How to Create a Python Dictionary**

Here’s a quick example showcasin  how to make an empty dictionary. Option 1: **new\_dict = {}**

Option 2: **other\_dict= dict()**

And you can use the same two approaches to add values to your dictionary:

**new\_dict = { ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.078.png)**

`  `**“brand”: “Honda”,   “model”: “Civic”,   “year”: 1995** 

**}** 

**print(new\_dict)**

**How to Access a Value in a Dictionary**

You can access any of the values in your dictionary the followin  way:

**x = new\_dict[“brand”]![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.079.png)**

You can also use the followin  methods to accomplish the same.

- **dict.keys()** isolates keys
- **dict.values()** isolates values
- **dict.items()** returns items in a list format of (key, value) tuple pairs

**Chan e Item Value**

To chan e one of the items, you need to refer to it by its key name:

***#Change the “year” to 2020:![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.080.png)***

**new\_dict= {** 

`  `**“brand”: “Honda”,** 

`  `**“model”: “Civic”,** 

`  `**“year”: 1995** 

**}** 

**new\_dict[“year”] = 2020** 

**Loop Throu h the Dictionary**

A ain to implement loopin , use for loop command. 

Note: In this case, the return values are the keys of the dictionary. But, you can also return values usin  another method.

***#print all key names in the dictionary ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.081.png)***

**for x in new\_dict:   print(x)** 

***#print all values in the dictionary*** 

**for x in new\_dict:   print(new\_dict[x])** 

***#loop through both keys and values***

**for x, y in my\_dict.items():   print(x, y)**

**If Statements (Conditional Statements) in Python**

Just like other pro rammin  lan ua es, Python supports the basic lo ical conditions from math: 

- Equals: a == b
- Not Equals: a != b
- Less than: a < b
- Less than or equal to a <= b
- Greater than: a > b
- Greater than or equal to: a >= b

You can levera e these conditions in various ways. But most likely, you’ll use them in  **if statements”** and **loops.** 

**If Statement Example**

The  oal of a conditional statement is to check if it’s True or False.

**if 5 > 1: ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.082.png)**

`        `**print(“That’s True!”)**

Output:

**That’s True!![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.083.png)**

**Nested If Statements**

For more complex operations, you can create nested if statements. Here’s how it looks:

**x = 35 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.084.png)**

**if x > 20:** 

`  `**print(“Above twenty,”)** 

`  `**if x > 30:** 

`    `**print(“and also above 30!”)**

**Elif Statements**

**elif** keyword prompts your pro ram to try another condition if the previous one(s) was not true. Here’s an example:

**a = 45 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.085.png)**

**b = 45** 

**if b > a:** 

`  `**print(“b is greater than a”) elif a == b:** 

`  `**print(“a and b are equal”)**

**If Else Statements**

**else** keyword helps you add some additional filters to your condition clause. Here’s how an if-elif-else combo looks:

**if age < 4:  ticket\_price = ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.086.png)0**  

**elif age < 18:  ticket\_price = 10  else: ticket\_price = 15**

**If-Not-Statements**

**Not** keyword let’s you check for the opposite meanin  to verify whether the value is NOT True: 

**new\_list = [1, 2, 3, 4] ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.087.png)**

**x = 10** 

**if x not in new\_list:** 

`    `**print(“’x’ isn’t on the list, so this is True!”)**

**Pass Statements**

If statements can’t be empty. But if that’s your case, add the **pass** statement to avoid havin  an error: 

**a = 33 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.088.png)b = 200** 

**if b > a:   pass**

**Python Loops**

Python has two simple loop commands that are  ood to know:

- for loops 
- while loops 

Let’s take a look at each of these.

**For Loop**

As already illustrated in the other sections of this Python checklist, **for loop** is a handy way for iteratin  over a sequence such as a list, tuple, dictionary, strin , etc. 

Here’s an example showin  how to loop throu h a strin :

**for x in “apple”: ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.089.png)**

`  `**print(x)**

Plus, you’ve already seen other examples for lists and dictionaries.

**While Loops**

While loop enables you to execute a set of statements as lon  as the condition for them is true.

***#print as long as x is less than 8 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.090.png)***

**i = 1 while i< 8:   print(x)   i += 1** 

**How to Break a Loop**

You can also stop the loop from runnin  even if the condition is met. For that, use the break statement both in while and for loops:

**i = 1 ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.091.png)**

**while i < 8:   print(i)   if i == 4:     break** 

`  `**i += 1**

**Class**

Since Python is an object-oriented pro rammin  lan ua e almost every element of it is an **object** — with its methods and properties. 

**Class** acts as a blueprint for creatin  different objects. **Objects** are an instance of a class, where the class is manifested in some pro ram.

**How to Create a Class**

Let’s create a class named TestClass, with one property named z:

**class TestClass:   z = ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.092.png)5**

**How To Create an Object**

As a next step, you can create an object usin  your class. Here’s how it’s done:

**p1 = TestClass() print(p1.x)![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.093.png)**

Further, you can assi n different attributes and methods to your object. The example is below:

**class car(object):     ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.094.png)“””docstring”””** 

`    `**def \_\_init\_\_(self, color, doors, tires):         “””Constructor”””** 

`        `**self.color = color** 

`        `**self.doors = doors** 

**self.tires = tires** 

`    `**def brake(self):** 

`        `**“””** 

`        `**Stop the car** 

`        `**“””** 

`        `**return “Braking”** 

`    `**def drive(self):** 

`        `**“””** 

`        `**Drive the car** 

`        `**“””** 

`        `**return “I’m driving!”**

**How to Create a Subclass**

Every object can be further sub-classified. Here’s an example

**class Car(Vehicle):     ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.095.png)“””** 

`    `**The Car class     “””** 

`    `**def brake(self):** 

`        `**“””** 

`        `**Override brake method** 

`        `**“””** 

`        `**return “The car class is breaking slowly!”** 

**if \_\_name\_\_ == “\_\_main\_\_”:** 

`    `**car = Car(“yellow”, 2, 4, “car”)     car.brake()** 

`    `**‘The car class is breaking slowly!’     car.drive()** 

`    `**“I’m driving a yellow car!”**

**Dealin  with Python Exceptions (Errors)**

Python has a list of in-built exceptions (errors) that will pop up whenever you make a mistake in your code. As a newbie, it’s  ood to know how to fix these.

**The Most Common Python Exceptions**

- AttributeError** — pops up when an attribute reference or assi nment fails.
- IOError — emer es when some I/O operation (e. . an open() function) fails for an I/O-related reason, e. .,  file not found  or  disk full .
- ImportError — comes up when an import statement cannot locate the module definition. Also, when a from… import can’t find a name that must be imported.
- IndexError — emer es when a sequence subscript is out of ran e.
- KeyError — raised when a dictionary key isn’t found in the set of existin  keys.
- KeyboardInterrupt — li hts up when the user hits the interrupt key (such as Control-C or Delete).
- NameError — shows up when a local or  lobal name can’t be found.
- OSError — indicated a system-related error.
- SyntaxError** — pops up when a parser encounters a syntax error.
- TypeError** — comes up when an operation or function is applied to an object of inappropriate type. 
- ValueError** — raised when a built-in operation/function  ets an ar ument that has the ri ht type but not an appropriate value, and the situation is not described by a more precise exception such as IndexError.
- ZeroDivisionError** — emer es when the second ar ument of a division or modulo operation is zero.

**How to Troubleshoot the Errors**

Python has a useful statement, desi n just for the purpose of handlin  exceptions — **try/except** statement.** Here’s a code snippet showin  how you can catch KeyErrors in a dictionary usin  this statement: 

**my\_dict = {“a”:1, “b”:2, “c”:3} ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.096.png)**

**try:** 

`        `**value = my\_dict[“d”]** 

`    `**except KeyError:** 

`        `**print(“That key does not exist!”)**

You can also detect several exceptions at once with a sin le statement. Here’s an example for that: 

**my\_dict = {“a”:1, “b”:2, “c”:3} ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.097.png)**

**try:** 

`    `**value = my\_dict[“d”]** 

**except IndexError:** 

`    `**print(“This index does not exist!”)** 

**except KeyError:** 

`    `**print(“This key is not in the dictionary!”) except:** 

`    `**print(“Some other problem happened!”)**

**WebsiteSetup.or**  - Python Cheat Sheet ![ref4]
**Python** Cheat Sheet 27

**try/except with else clause**

Adding an else clause will help you confirm that no errors were found:

**my\_dict = {“a”:1, “b”:2, “c”:3} ![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.098.png)**

**try:** 

`    `**value = my\_dict[“a”]** 

**except KeyError:** 

`    `**print(“A KeyError occurred!”) else:** 

`    `**print(“No error occurred!”)**

**Conclusions![](Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.099.png)**

**Now you know the core Python concepts!**

By no means is this Python checklist comprehensive. But it includes all the key data types, functions and commands you should learn as a be inner. 

*As always, we welcome your feedback in the comment section below!*

**WebsiteSetup.or**  - Python Cheat Sheet

[ref1]: Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.007.png
[ref2]: Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.008.png
[ref3]: Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.011.png
[ref4]: Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.059.png
[ref5]: Aspose.Words.341e534e-8d26-4138-97aa-de7594d7d4ab.060.png
