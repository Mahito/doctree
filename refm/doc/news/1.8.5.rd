= ruby 1.8.5 feature

ruby 1.8.4 ���� ruby 1.8.5 �ޤǤ��ѹ����Ǥ���

�Ǻ�����

*�Х������αƶ���ޤ��ư��Ѥ���Τ��Ͽ���롣
*ñ�˥Х���ľ���������Τ�Τϼ�Ͽ���ʤ���
*�饤�֥��ؤ�ñ�ʤ�������ɲäϼ�Ͽ���ʤ���

�ʲ��ϳ��ѹ������դ���٤������Ǥ���

����ˤĤ���(�ä˽��פʤ�Τ���ʸ��(���))

* ���ƥ���
  * [ruby]: ruby ���󥿥ץ꥿���ѹ�
  * [api]: ��ĥ�饤�֥�� API
  * [lib]: �饤�֥��
* ��٥�
  * [bug]: �Х�����
  * [new]: �ɲä��줿���饹���᥽�åɤʤ�
  * [compat]: �ѹ����줿���饹���᥽�åɤʤ�
    * �ߴ����Τ����ѹ�
    * only backward-compatibility
    * �ƶ����ϰϤ��������Ȼפ����ѹ��⤳����
  * [change]: �ѹ����줿���饹���᥽�åɤʤ�(�ߴ����Τʤ��ѹ�)
  * [obsolete]: �ѻߤ��줿(�����ͽ���)��ǽ
  * [platform]: �б��ץ�åȥե�������ɲ�

== 1.8.4 (2005-12-24) -> ((<stable-snapshot|URL:ftp://ftp.ruby-lang.org/pub/ruby/stable-snapshot.tar.gz>))

=== 2006-06-18

: BasicSocket#recv_nonblock [new]
: UDPSocket#recvfrom_nonblock [new]

  �ɲ�

=== 2006-06-17

: Pathname(path) [new]

  pathname ���ɲ�

: Kernel#pretty_inspect [new]

  pp ���ɲ�

: RSS::TaxonomyTopicModel [new]
: RSS::TaxonomyTopicsModel [new]
: RSS::Maker::TaxonomyTopicModel [new]
: RSS::Maker::TaxonomyTopicsModel [new]

   RSS Parser/RSS Maker��Taxonomy�⥸�塼��򥵥ݡ��Ȥ��ޤ�����

: RSS::Maker xxx.new_yyy(&block) [compat]

   maker.items.new_item�ʤɤ��֥��å���Ȥ��褦�ˤʤ�ޤ�����((<ruby-talk:197284>))

   ���ޤ�

     item = maker.items.new_item
     item.xxx = yyy
     ...

   �Ƚ񤤤Ƥ�����Τ�

     maker.items.new_item |item|
       item.xxx = yyy
       ...
     end

   �Ƚ񤱤�褦�ˤʤ�ޤ�����

: RSS::RootElementMixin#to_xml [new]

  ��������ˤ���ȡ�RSS 1.0����RSS 2.0���Ѵ��Ǥ��ޤ���

    rss10 = RSS::Parser.parse(File.read("1.0.rdf"))
    File.open("2.0.rss", "w") {|f| f.print(rss10.to_xml("2.0"))}

  ((<ruby-talk:197284>))

: RSS::VERSION

   "0.1.5"����"0.1.6"�ˤʤ�ޤ�����

=== 2006-06-14

: Process.getrlimit(resource) [new]
: Process.setrlimit(resource, limit) [new]
: Process.setrlimit(resource, cur_limit, max_limit) [new]
: Process::RLIM_INFINITY
: Process::RLIM_SAVED_MAX
: Process::RLIM_SAVED_CUR
: Process::RLIMIT_CORE
: Process::RLIMIT_CPU
: Process::RLIMIT_DATA
: Process::RLIMIT_FSIZE
: Process::RLIMIT_NOFILE
: Process::RLIMIT_STACK
: Process::RLIMIT_AS
: Process::RLIMIT_MEMLOCK
: Process::RLIMIT_NPROC
: Process::RLIMIT_RSS
: Process::RLIMIT_SBSIZE

  �ɲ� ((<ruby-dev:28729>))

=== 2006-06-11

: OptionParser#getopts [new]

: tempfile ����������ƥ�ݥ��ե������̾���� <basename><pid>.<count> ���� <basename>.<pid>.<count> �ˤʤ�ޤ��� ((<ruby-talk:196272>))

=== 2006-06-07

: configure --with-winsock2 [new]

  mswin32�Ǥ����mingw32�Ǥǡ������winsock1�����ä�winsock2�����Ѥ���
  configure���ץ�����ɲä���ޤ�����

=== 2006-06-02

#: IPSocket#recvfrom_nonblock [new]
#: UNIXSocket#recvfrom_nonblock [new]
: TCPServer#accept_nonblock [new]
: UNIXServer#accept_nonblock [new]

  ((<ruby-core:7925>))

=== 2006-05-22

: IO#read_nonblock [new]
: IO#write_nonblock [new]
: Socket#connect_nonblock [new]
: Socket#accept_nonblock [new]
: Socket#recvfrom_nonblock [new]

  ((<ruby-core:7917>))

=== 2006-02-21
: File#link [bug]

  mswin32�ǡ�mingw32�Ǥ�File#link��ư���ʤ��ʤäƤ����Զ�礬��������ޤ�����

=== 2006-02-20

: RbConfig [new]

  ((<rbconfig>)) �� Config �˲ä��� RbConfig ���������褦�ˤʤ�ޤ�����

=== 2006-02-06

: File#flock [bug]

  cygwin�Ǥ�Ruby�Υ���åɤ�ʣ��������֤ǡ����å�������flock(File::LOCK_UN)�����
  �ߤޤäƤ��ޤäƤ����Τ���������ޤ�����

=== 2006-02-04

: File#flock [bug]

  mswin32�Ǥ�Ruby�Υ���åɤ�ʣ��������֤ǡ����å�������flock(File::LOCK_UN)�����
  �ߤޤäƤ��ޤäƤ����Τ���������ޤ�����

=== 2005-12-29

: Thread [compat]

  ¾��������ʤ��¤�ư���Ф��ʤ��ˤ⤫����餺¾���黲�Ȥ���Ƥ��ʤ� thread �� abort �����褦�ˤʤ�ޤ���
  ((<ruby-dev:28154>))

== ����

* ((<Changes in Ruby 1.8.5|URL:http://eigenclass.org/hiki.rb?ruby+1.8.5+changelog>))
