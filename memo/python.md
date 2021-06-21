### Exception
	BaseException	所有异常的基类
	SystemExit	解释器请求退出
	KeyboardInterrupt	用户中断执行(通常是输入^C)
	Exception	常规错误的基类
	StopIteration	迭代器没有更多的值
	GeneratorExit	生成器(generator)发生异常来通知退出
	StandardError	所有的内建标准异常的基类
	ArithmeticError	所有数值计算错误的基类
	FloatingPointError	浮点计算错误
	OverflowError	数值运算超出最大限制
	ZeroDivisionError	除(或取模)零 (所有数据类型)
	AssertionError	断言语句失败
	AttributeError	对象没有这个属性
	EOFError	没有内建输入,到达EOF 标记
	EnvironmentError	操作系统错误的基类
	IOError	输入/输出操作失败
	OSError	操作系统错误
	WindowsError	系统调用失败
	ImportError	导入模块/对象失败
	LookupError	无效数据查询的基类
	IndexError	序列中没有此索引(index)
	KeyError	映射中没有这个键
	MemoryError	内存溢出错误(对于Python 解释器不是致命的)
	NameError	未声明/初始化对象 (没有属性)
	UnboundLocalError	访问未初始化的本地变量
	ReferenceError	弱引用(Weak reference)试图访问已经垃圾回收了的对象
	RuntimeError	一般的运行时错误
	NotImplementedError	尚未实现的方法
	SyntaxError	Python 语法错误
	IndentationError	缩进错误
	TabError	Tab 和空格混用
	SystemError	一般的解释器系统错误
	TypeError	对类型无效的操作
	ValueError	传入无效的参数
	UnicodeError	Unicode 相关的错误
	UnicodeDecodeError	Unicode 解码时的错误
	UnicodeEncodeError	Unicode 编码时错误
	UnicodeTranslateError	Unicode 转换时错误
	Warning	            警告的基类
	DeprecationWarning	关于被弃用的特征的警告
	FutureWarning	关于构造将来语义会有改变的警告
	OverflowWarning	旧的关于自动提升为长整型(long)的警告
	PendingDeprecationWarning	关于特性将会被废弃的警告
	RuntimeWarning	可疑的运行时行为(runtime behavior)的警告
	SyntaxWarning	可疑的语法的警告
	UserWarning	用户代码生成的警告

### RE
	import re
	re.sub(r'\bROAD\b', 'RD.', s)
	pattern_r = r'''
		^                   #beginning of string
		M{0,3}              #thousands ‐ 0 to 3 Ms
		(CM|CD|D?C{0,3})    #hundreds ‐ 900 (CM), 400 (CD), 0‐300 (0 to 3 Cs),
							#or 500‐800 (D, followed by 0 to 3 Cs)
		(XC|XL|L?X{0,3})    #tens ‐ 90 (XC), 40 (XL), 0‐30(0 to 3 Xs)
							#or 50‐80 (L, followed by 0 to 3 Xs)
		(IX|IV|V?I{0,3})    #ones ‐ 9 (IX), 4 (IV), 0‐3 (0 to 3 Is),
							#or 5‐8 (V, followed by 0 to 3 Is)
		$                   #end of string
		'''
	pattern = re.compile(pattern_r, re.X)
	pattern.search(s).groups()

	re.match(pattern, string, flags=0)	从字符串的起始位置匹配，如果起始位置匹配不成功的话，match()就返回none
	re.search(pattern, string, flags=0)	扫描整个字符串并返回第一个成功的匹配
	re.findall(pattern, string, flags=0)	找到RE匹配的所有字符串，并把他们作为一个列表返回
	re.finditer(pattern, string, flags=0)	找到RE匹配的所有字符串，并把他们作为一个迭代器返回
	re.sub(pattern, repl, string, count=0, flags=0)	替换匹配到的字符串
	group(num=0)	匹配的整个表达式的字符串，group() 可以一次输入多个组号，在这种情况下它将返回一个包含那些组所对应值的元组。
	groups()	返回包含所有小组字符串的元组，从1到所含的小组
	groupdict()	返回以有别名的组的别名为键、以该组截获的子串为值的字典
	start()	返回匹配开始的位置
	end()	返回匹配结束的位置
	span()	返回一个元组包含匹配（开始，结束）的位置

	'.' 匹配所有字符串，除\n以外
	‘-’ 表示范围[0-9]
	'*' 匹配前面的子表达式零次或多次。要匹配 * 字符，请使用 \*。
	'+' 匹配前面的子表达式一次或多次。要匹配 + 字符，请使用 \+
	'^' 匹配字符串开头
	‘$’ 匹配字符串结尾 re
	'\' 转义字符， 使后一个字符改变原来的意思，如果字符串中有字符*需要匹配，可以\*或者字符集[*] re.findall(r'3\*','3*ds')结['3*']
	'*' 匹配前面的字符0次或多次 re.findall("ab*","cabc3abcbbac")结果：['ab', 'ab', 'a']
	‘?’ 匹配前一个字符串0次或1次 re.findall('ab?','abcabcabcadf')结果['ab', 'ab', 'ab', 'a']
	'{m}' 匹配前一个字符m次 re.findall('cb{1}','bchbchcbfbcbb')结果['cb', 'cb']
	'{n,m}' 匹配前一个字符n到m次 re.findall('cb{2,3}','bchbchcbfbcbb')结果['cbb']
	'\d' 匹配数字，等于[0-9] re.findall('\d','电话:10086')结果['1', '0', '0', '8', '6']
	'\D' 匹配非数字，等于[^0-9] re.findall('\D','电话:10086')结果['电', '话', ':']
	'\w' 匹配字母和数字，等于[A-Za-z0-9] re.findall('\w','alex123,./;;;')结果['a', 'l', 'e', 'x', '1', '2', '3']
	'\W' 匹配非英文字母和数字,等于[^A-Za-z0-9] re.findall('\W','alex123,./;;;')结果[',', '.', '/', ';', ';', ';']
	'\s' 匹配空白字符 re.findall('\s','3*ds \t\n')结果[' ', '\t', '\n']
	'\S' 匹配非空白字符 re.findall('\s','3*ds \t\n')结果['3', '*', 'd', 's']
	'\A' 匹配字符串开头
	'\Z' 匹配字符串结尾
	'\b' 匹配单词的词首和词尾，单词被定义为一个字母数字序列，因此词尾是用空白符或非字母数字符来表示的
	'\B' 与\b相反，只在当前位置不在单词边界时匹配
	'(?P<name>...)' 分组，除了原有编号外在指定一个额外的别名 re.search("(?P<province>[0-9]{4})(?P<city>[0-9]{2})(?P<birthday>[0-9]{8})","371481199306143242").groupdict("city") 结果{'province': '3714', 'city': '81', 'birthday': '19930614'}
	[] 是定义匹配的字符范围。比如 [a-zA-Z0-9] 表示相应位置的字符要匹配英文字符和数字。[\s*]表示空格或者*号。

### Time
	import time
	time.time()
	time.localtime()
	time.struct_time(tm_year=2019, tm_mon=9, tm_mday=30, tm_hour=21, tm_min=55, tm_sec=10, tm_wday=0, tm_yday=273, tm_isdst=0)
	time.gmtime()
	datetime.now()
	datetime.utcnow()
	datetime.datetime(2019, 9, 30, 15, 35, 36, 275686)
	time.strftime('%Y-%m-%d %H:%M:%S, %w', time.localtime())
	time.strftime('%d/%m/%Y', utc_time)
	datetime.strptime('2019-09-30 23:20:00, 1', '%Y-%m-%d %H:%M:%S, %w')
	today = datetime.datetime.now()
	today + datetime.timedelta(days=1)
	today + datetime.timedelta(minutes=1)
	today - datetime.timedelta(seconds=3600)
	today + datetime.timedelta(seconds=-3600)

