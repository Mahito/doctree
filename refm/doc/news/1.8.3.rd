= ruby 1.8.3 feature

*((<ruby 1.8 feature>))
*((<ruby 1.8.2 feature>))

ruby 1.8.2 ���� ruby 1.8.3 �ޤǤ��ѹ����Ǥ���

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

bundled library�Ǥ���(ruby�ΰ����ǤϤʤ�)soap4r���ѹ����ˤĤ��Ƥϡ��ʲ��򻲹ͤˤ��Ƥ���������
soap4r-1.5.3��ruby-1.8.2��soap4r-1.5.5��ruby-1.8.3��bundle����Ƥ��ޤ���
 * ((<URL:http://dev.ctor.org/soap4r/wiki/Changes-154>))
 * ((<URL:http://dev.ctor.org/soap4r/wiki/Changes-155>))

== 1.8.2 (2004-12-25) -> 1.8.3 (2005-09-21)

=== 2005-09-19
: FileUtils.remove_entry_secure [lib] [new]
: FileUtils.remove_entry        [lib] [new]
: FileUtils.chmod_R             [lib] [new]
: FileUtils.chown               [lib] [new]
: FileUtils.chown_R             [lib] [new]
: FileUtils.commands            [lib] [new]
: FileUtils.options             [lib] [new]
: FileUtils.have_option?        [lib] [new]
: FileUtils.options_of          [lib] [new]
: FileUtils.collect_method      [lib] [new]

  �ɲá�

: FileUtils.rm_r  [lib] [compat]
: FileUtils.rm_rf [lib] [compat]
: FileUtils.cd    [lib] [compat]
: FileUtils.cp_r  [lib] [compat]

  rm_f �� rm_rf �� :secure ���ץ���������դ���褦�ˤʤ�ޤ�����
  cd �� :noop ���ץ���������դ��ʤ��ʤ�ޤ�����
  cp_r �� :dereference_root ���ץ���������դ���褦�ˤʤ�ޤ�����

=== 2005-09-16
: File.join [ruby] [compat]

  �������å���̩�ˤ���褦�ˤʤ�ޤ�����

    $ ruby-1.8.2 -e 'p File.join(1, 2)'
    "1/2"
    
    $ ruby-1.8.3 -e 'p File.join(1, 2)'
    -e:1:in `join': can't convert Fixnum into String (TypeError)
            from -e:1

=== 2005-09-16
: File.extname [ruby] [compat]

  Ϳ����줿 pathname ���ԥꥪ�ɤǽ����硢�ԥꥪ�ɤǤϤʤ�����ʸ������֤��褦�ˤʤ�ޤ�����

    $ ruby-1.8.2 -e 'p File.extname("a.")'
    "."
    $ ruby-1.8.3 -e 'p File.extname("a.")'
    ""

=== 2005-09-13
: Logger#formatter  [lib] [new]
: Logger#formatter= [lib] [new]
: Logger::Formatter [lib] [new]

  �ɲá�

=== 2005-09-13
: Net::HTTP

  https �Ǥ� Proxy ǧ�ڤ򥵥ݡ��Ȥ���褦�ˤʤ�ޤ�����
 
: Net::HTTP.post_form(url, params) [lib] [new]

: Net::HTTPHeader#content_length=  [lib] [new]
: Net::HTTPHeader#content_type     [lib] [new]
: Net::HTTPHeader#main_type        [lib] [new]
: Net::HTTPHeader#sub_type         [lib] [new]
: Net::HTTPHeader#type_params      [lib] [new]
: Net::HTTPHeader#content_type=    [lib] [new]
: Net::HTTPHeader#set_content_type [lib] [new]

: Net::HTTPRequest#body(=)         [lib] [new]
: Net::HTTPRequest#body_stream(=)  [lib] [new]

  �ɲá�

: Net::HTTPHeader#each_capitalized      [lib] [compat]
: Net::HTTPHeader#each_capitalized_name [lib] [new]

  Net::HTTPHeader#canonical_each �� Net::HTTPHeader#each_capitalized
  ��̾�����Ѥ��ޤ�����canonical_each �� each_capitalized ����̾�Ȥ�
  ���󶡤���ޤ���

: net/http [lib] [new]

  WebDAV �Υ᥽�åɤ򥵥ݡ��Ȥ���褦�ˤʤ�ޤ�����
  PROPPATCH, LOCK, UNLOCK, OPTIONS, PROPFIND, DELETE, MOVE, COPY, MKCOL��
  
: Net::HTTPRequest#body_exist?  [lib] [obsolete]
: Net::HTTPResponse#response    [lib] [obsolete]
: Net::HTTPResponse#header      [lib] [obsolete]
: Net::HTTPResponse#read_header [lib] [obsolete]
  
  obsolete �ˤʤ�ޤ�����VERBOSE �⡼�ɤλ����ٹ𤬽Фޤ���

=== 2005-09-10
: OpenSSL::PKCS7::RecipientInfo [lib] [new]
: OpenSSL::PKCS7::SignerInfo    [lib] [compat]

  �����饹���ɲá�OpenSSL::PKCS7::Signer �� OpenSSL::PKCS7::SignerInfo ��̾�����Ѥ��ޤ�����Signer ����̾�Ȥ���
  ��³���󶡤���ޤ���

=== 2005-09-10
: OpenSSL::Digest::SHA224
: OpenSSL::Digest::SHA256
: OpenSSL::Digest::SHA384
: OpenSSL::Digest::SHA512

  �����饹���ɲá�OpenSSL 0.9.8 �ʹߤȤȤ�˥���ѥ��뤵�줿���Τߡ�

=== 2005-09-09
: $SAFE [ruby] [compat]

  �᥽�åɤ�������줿���� $SAFE ��٥�򵭲�����褦�ˤʤ�ޤ�����
  �᥽�åɤ�������줿���� $SAFE ��٥�Ǽ¹Ԥ���ޤ���
  $SAFE ��٥� 3 �ʾ�δĶ����ˤ�����������줿�᥽�åɤ�ƤӽФ����Ȥϡ�$SAFE ��٥� �� 0 �ΤȤ�
  �ػߤ����褦�ˤʤ�ޤ�����

    $ cat mthd_taint.rb
    th = Thread.new{
      $SAFE = 3
      class Hoge
        def foo
          puts "safe level: #{$SAFE}"
        end
      end
    }    
    th.join
    p $SAFE
    Hoge.new.foo

    $ ruby-1.8.2 mthd_taint.rb
    0
    "safe level: 0"
    
    $ ruby-1.8.3 mthd_taint.rb
    0
    mthd_taint.rb:11:in `foo': calling insecure method: foo (SecurityError)
            from mthd_taint.rb:11

=== 2005-09-09
: String#*  [ruby] [compat]
: String#[] [ruby] [compat]
  ��ʸ���ˤ� taint �����Ť���褦�ˤʤ�ޤ�����((<ruby-dev:26900>)) ((<ruby-dev:27121>))
    $ ruby-1.8.2 -e 'p ("x".taint * 0).tainted?'
    false
    
    $ ruby-1.8.3 -e 'p ("x".taint * 0).tainted?'
    true

    $ ruby-1.8.2 -e 'p ("x".taint[1..-1]).tainted?'
    false
    
    $ ruby-1.8.3 -e 'p ("x".taint[1..-1]).tainted?'
    true

  Range ���֥������Ȥ� taint ����Ƥ����硢"string"[range] �� taint �����褦�ˤʤ�ޤ�����((<ruby-dev:27121>))

    $ ruby-1.8.2 -e 'p ("x"[(0..-1).taint]).tainted?'
    false
    
    $ ruby-1.8.3 -e 'p ("x"[(0..-1).taint]).tainted?'
    true

=== 2005-08-29
: Time.parse [lib] [compat]

  Time.parse ���������ʲ����äⰷ����褦�ˤʤ�ޤ�����((<ruby-talk:153859>))

    $ ruby-1.8.2 -r time -e 'p  Time.parse("23 Aug 2005 19:00:01.1").to_f'
    1124791201.0
    
    $ ruby-1.8.3 -r time -e 'p  Time.parse("23 Aug 2005 19:00:01.1").to_f'
    1124791201.1

=== 2005-08-20
: Logger [lib] [bug]
  �ե�����򥷥եȻ��Υ졼������ǥ�����󤬽�������ޤ�����

=== 2005-08-07
: WIN32OLE_EVENT#on_event [lib] [bug]
  �Ǹ������������٥�ȥϥ�ɥ餬ͭ���ˤʤ�褦�˽������ޤ�����

=== 2005-07-27
: Dir#each    [ruby] [bug]
: Dir#entries [ruby] [bug]

  1��᥽�åɤ�Ƥ�Ǥ��ޤ��ȶ��ˤʤ�Х��������ޤ�����

    $ ruby-1.8.2 -e '
    d = Dir.new("/")
    d.entries
    p d.entries
    '
    []
     
    $ ruby-1.8.3 -e '
    d = Dir.new("/")
    d.entries
    p d.entries
    '
    [".", "..", "dev", "home", "proc", "var", "tmp", "etc", "usr", "sbin", "bin", "boot"]



=== 2005-07-11
: ����ɽ�� [ruby] [bug]

  ����ɽ����ƥ����� \c\\ ɽ��������ȥѡ������顼�ˤʤ�Х��������ޤ�����

    $ cat r.rb
    p /[\c\\]/ =~ "\c\\"
    p /\c\\/ =~ "\c\\"
    
    $ ruby-1.8.2 r.rb
    r.rb:1: premature end of regular expression: /[\c\\]/
    r.rb:2: invalid regular expression; '\' can't be last character: /\c\\/
    
    $ ruby-1.8.3 r.rb
    0
    0

=== 2005-06-30
: Delegator [lib] [compat]

  Delegator ���֥������Ȥ��������줿���������줿�᥽�åɤ˴ؤ��Ƥ⡢Ŭ�ڤ˰Ѿ�����褦�ˤʤ�ޤ�����
  ((<ruby-talk:146776>)) ((<ruby-talk:146894>))
    $ cat test_dlg.rb
    foo = Object.new
    foo2 = SimpleDelegator.new(foo)
    def foo.bar
      puts "bar"
    end
    foo2.bar  
     
    $ ruby-1.8.2 -r delegate test_dlg.rb
    test_dlg.rb:6: undefined method `bar' for #<Object:0x4021b0a0> (NoMethodError)
    
    $ ruby-1.8.3 -r delegate test_dlg.rb
    bar

=== 2005-06-20
: DBM#closed? [lib] [new]
: GDBM#closed? [lib] [new]
: SDBM#closed? [lib] [new]

=== 2005-06-16

: Time.parse [lib] [compat]

  ���뤦�� "Fri Jan  1 08:59:60 +0900 1999" �򥵥ݡ��Ȥ��Ƥ���Ķ��ˤ����ơ�Time.parse ��
  Ŭ�ڤ˿��񤦤褦�ˤʤ�ޤ�����

=== 2005-06-08
: Curses.insertln [lib] [new]
: Curses::Window.insertln [lib] [new]

=== 2005-06-08
: ext/socket [lib] [compat]

  ��ĥ�饤�֥�� socket �� AIX ��ǥ���ѥ��뤵���褦�ˤʤ�ޤ�����((<ruby-list:40832>))

=== 2005-06-07
: Module#class_variable_get [ruby] [new]
: Module#class_variable_set [ruby] [new]
  
  ���饹�᥽�åɤ���((<�ѿ������/���饹�ѿ�>))�˥����������뤿���
  ((<Module#class_variable_get|Module/class_variable_get>)) ��
  ((<Module#class_variable_set|Module/class_variable_set>)) ��
  �ɲä���ޤ�����((<ruby-talk:144741>))

    class Fred
      @@foo = 99
      def foo
        @@foo
      end
    end
    
    def Fred.foo
      @@foo = 101      #=> @@foo �� Fred ���饹�Υ��饹�ѿ��ǤϤʤ���
    end
    
    def Fred.foo_foo   
      class_variable_set(:@@foo, 101)  # self �� Fred ���饹���ȤǤ��뤳�Ȥ����ա����饹�ѿ� @@foo ���ͤ򥻥åȤ��롣
    end
    
    Fred.foo           # �᥽�åɤ�Ƥ�Ǥ⡢Fred ���饹�Υ��饹�ѿ� @@foo ���Ѥ��ʤ���
    p Fred.new.foo     #=> 99 

    Fred.foo_foo       # 
    p Fred.new.foo     #=> 101


=== 2005-05-28
: WEBrick::CGI::Socket#request_line [lib] [compat]

  WEBrick �� CGI �Ķ����ǻȤ���硢
  request_line �᥽�åɤ� REQUEST_URI �إå�������Ф������ͥ�褷�ƻȤ��褦�ˤʤ�ޤ�����
  ((<ruby-dev:26235>))

=== 2005-05-27
: mkmf [lib] [bug]
  MSYS �Ķ����ˤ����ơ�PATH�ζ��ڤ��ͤ˥��ߥ������Ȥ��褦�������ޤ�����((<ruby-dev:26232>))

=== 2005-05-24
: getopts [lib] [obsolete]
  getopts �� deprecated �ˤʤ�ޤ�����deprecated �Ǥ���Ȥ����ٹ�ϡ�
  ���ץ����� -w ���դ������˽Фޤ���((<ruby-dev:26201>))

=== 2005-05-22
: OpenSSL::SSL::SSLServer#intialize(svr, ctx, session_id=nil)
  session_id ������դ���褦�ˤʤ�ޤ�����((<ruby-core:4663>))

=== 2005-05-19
: REXML::Encoding#decode_sjis [lib] [bug]
: REXML::Encoding#encode_sjis [lib] [bug]
  decode_sjis �� encode_sjis ��
  �դ��������Ƥ����Х��������ޤ�����((<ruby-core:4772>))

=== 2005-05-16
: singleton class [ruby] [change]
  �ðۥ��饹��ʣ���Ǥ��ʤ��ʤ�ޤ�����((<ruby-talk:142749>))

    $ ruby-1.8.3 -e 'class << "str"; self end.dup'
    -e:1:in `initialize_copy': can't copy singleton class (TypeError)
            from -e:1

=== 2005-05-15
: Pathname#unlink [lib] [compat]
  �ǥ��쥯�ȥ�ؤΥ���ܥ�å���󥯤��������褦�ˤʤ�ޤ�����((<ruby-core:4992>))

=== 2005-05-14
: NameError
: SystemCallError
: SystemExit
  ���㳰���饹�Υ��󥹥��󥹤������������ˡ��ƥ��饹�Υ��󥹥ȥ饯��
  �Ǥ��� Exception#initialize ���ƤФ��褦�ˤʤ�ޤ�����((<ruby-talk:142593>)) ((<ruby-dev:26177>))

=== 2005-05-11
: break [ruby] [bug]
  �᥽�åɤ�ۤ��� break ��ͭ���ˤʤ�Х��������ޤ�����((<ruby-list:40818>))
    
    $ cat brk.rb
    def stop(n)
      break  if n == 2
    end
    
    (1..5).each do |i|
      stop(i)
      puts i
    end
    
    $ ruby-1.8.2 brk.rb
    1
    
    $ ruby-1.8.3 brk.rb
    1
    brk.rb:2:in `stop': unexpected break (LocalJumpError)
            from brk.rb:6
            from brk.rb:5

=== 2005-05-11
: WEBrick::CGI#[]     [lib] [new]
: WEBrick::CGI#logger [lib] [new]
: WEBrick::CGI#config [lib] [new]

=== 2005-05-01
: ruby -s option [ruby] [bug]
  ���ץ���� -s �ǥ��������Ǥ��ʤ��������Х��ѿ����Ǥ��Ƥ��ޤ��Х�����
  ���ޤ�����- �� _ ���Ѵ����ƥ������Х��ѿ����������褦�ˤʤ�ޤ�����- �ʳ���
  ���椬�դ��ޤ����ϡ��㳰 NameError ���ꤲ�ޤ���
  
    $ ruby-1.8.2 -se 'puts global_variables.grep(/foo/)' -- --foo-bar
    $-foo-bar
    $ ruby-1.8.3 -se 'puts global_variables.grep(/foo/)' -- --foo-bar
    $_foo_bar

    $ ruby-1.8.3 -se 'puts global_variables.grep(/foo/)' -- --foo\@bar    
    -e: invalid name for global variable - --foo@bar (NameError)

=== 2005-04-18
: WIN32OLE.codepage [lib] [new]
: WIN32OLE.codepage= [lib] [new]

=== 2005-04-10
: WIN32OLE#invoke [lib] [bug]
  nil �� VT_ERROR ���Ѵ����� Invoke��ƤӽФ��Ƽ��Ԥ���Ȥ��ˤ� VT_EMPTY���Ѵ�����
  ���� Invoke��ƤӽФ��褦�ˤ��ޤ�����
    
=== 2005-04-09
: rss [lib][new][compat]

  ʣ����Dublin Core�����Ǥ򰷤���褦�ˤʤ�ޤ�����

  ���Τ���dc_#{Dublin Core������̾��ʣ����}�Ȥ����᥽�åɤ�Ƴ������ޤ�����

  �ߴ����Τ���˰�����dc_#{Dublin Core������̾��ñ����}�Ȥ����᥽�åɤ�Ĥ���Ƥ��ޤ���

=== 2005-03-07
: String#<=> [ruby][compat]

  ��ӤǤ��ʤ���Τ��Ϥ��줿���� false �ǤϤʤ� nil ���֤��褦�ˤʤ�ޤ�����
  ((<ruby-dev:25811>))

    $ ruby-1.8.2 -e 'p "a" <=> 1'
    false 
    $ ruby-1.8.3 -e 'p "a" <=> 1'
    nil


=== 2005-03-06
: HTTPHeader#get_fields [lib][new]
: HTTPHeader#add_field [lib][new]

  �ɲá�((<ruby-list:40629>))

=== 2005-02-23
: local variable and method [ruby][bug]
  �쥷���Ф���ꤷ���᥽�åɸƤӽФ�����Ʊ̾�Υ��������ѿ���̵ͭ�ˤ��
  �Ʊƶ������Х�����������ޤ�����
  ((<ruby-dev:25737>))
  ((<URL:http://yowaken.dip.jp/tdiary/20050220.html#p01>))

=== 2005-02-17
: Open3.popen3 [lib] [compat]
  Open3.popen3�¹Ը��$?.exitstatus��0�ˤʤ�褦�˽�������ޤ�����

: ((<���饹���᥽�åɤ����/defined?>)) [ruby][bug]
  (({defined?(@a = b)}))�Τ褦�� NODE_IASGN �� nil �ǤϤʤ�
  "assignment" ���֤��褦�ˤʤ�ޤ�����
  ((<"[yarv-dev:418]"|URL:http://www.atdot.net/mla/yarv-dev/418>))

=== 2005-02-17
: Test::Unit::AutoRunner.run [lib] [change]
  �������ΰ�̣���Ѥ��ޤ�����

=== 2005-02-14

: OpenSSL::SSL::SSLSocket#post_connection_check [lib][new]

  �ɲ� ((<ruby-dev:25690>))

=== 2005-02-13

: ERB::Util.html_escape [lib] [compat]
: ERB::Util.url_encode [lib] [compat]

  �⥸�塼��ؿ��Ȥ��Ƥ�Ȥ���褦�ˤʤ�ޤ�����((<ruby-dev:25687>))

=== 2005-02-12

: open-uri [lib] [new]
  https �򥵥ݡ��Ȥ���褦�ˤʤ�ޤ�����

=== 2005-02-11

: URI::HTTP#proxy_open [lib][new]

  (({:http_basic_authentication})) ���ץ������ɲ�
  ((<ruby-core:4416>))

: OpenSSL::X509::Store#set_default_paths [lib][new]

  �ɲ� ((<ruby-dev:25670>))

=== 2005-02-06
: Resolv::DNS::Resource::TXT#strings [lib] [new]
: Resolv::DNS::Message::MessageEncoder#put_string_list [lib] [new]
: Resolv::DNS::Message::MessageDecoder#get_string_list [lib] [new]
  �ɲá�((<ruby-talk:129732>))

=== 2005-02-04

: RSS Parser/Maker [lib] [new]

  ((<Image�⥸�塼��|URL:http://web.resource.org/rss/1.0/modules/image/>))�Υ��ݡ���

=== 2005-02-03

: RSS::Element#convert(value) [lib] [new]
   value�Υ��󥳡��ǥ��󥰤��Ѵ�����᥽�åɤ������
   
   value�Υ��󥳡��ǥ��󥰤����Ǥ��������󥳡��ǥ��󥰤���output_encoding=�����ꤷ�����󥳡��ǥ��󥰤��Ѵ�����ޤ���

: StringIO [lib] [compat]
  close, close_read, close_write �� ((<IO>)) ��Ʊ���褦�ˡ�
  nil ���֤��褦�ˤʤ�ޤ�����((<ruby-dev:25623>))

=== 2005-01-29

: Resolv::DNS::Resource::IN::SRV [lib] [new]

  �ɲ�
  (RFC2782)

=== 2005-01-26
: File#flock [ruby] [bug]
  Windows ��Ǥ� File#flock(File::LOCK_UN) �����������򤵤�ʤ��Х���
  ��������ޤ�����((<ruby-dev:25574>)) 

=== 2005-01-25
: RUBYOPT [ruby] [bug]
  �Ķ��ѿ� RUBYOPT �� -T ���ץ�����Ŭ�ڤ˲�᤹��褦�ˤʤ�ޤ�����
  �ޤ��ϥ��ե� - ���ά�Ǥ���褦�ˤʤ�ޤ�����((<ruby-dev:25512>))

    $ env RUBYOPT='Ke rnet/http' ruby  -e 'p Net::HTTP'  
    Net::HTTP

=== 2005-01-17
: WEBrick::Config::SSL [lib] [compat]
  ���ץ���� :SSLEnable �Υǥե���Ȥ� false �ˤʤ�ޤ�����

: WEBrick::HTTPUtils#escape_path [lib] [new]

=== 2005-01-15

: RSS::VERSION [lib]

  0.1.2 -> 0.1.3

: RSS::Parser [lib] [bug]

  �Ѿ�����ȥ��顼�ˤʤ�Х������� ((<ruby-talk:126104>))

=== 2005-01-12
: Class#superclass [ruby] [bug]
  �ðۥ��饹�Υ᥽�å� superclass ���ðۥ��饹���֤��褦�˽�������ޤ�����
  ((<ruby-list:40519>))

=== 2005-01-09

: IO#read [obsolete]
: IO#readpartial [new]

  nonblocking IO ���Ф��� IO#read �ε�ư�� ruby 1.9 �ʹߤ��Ѳ����ޤ� ((<ruby-dev:25101>))�����Τ��ᡢ
  ruby 1.8.3 �ʹߤǤϡ�VERBOSE �⡼�ɤλ��� IO#read ���Υ�֥��å��󥰥⡼�ɤ�
  �ǡ������ɤ߹��ߤ˼��Ԥ��� ((<Errno::EAGAIN|Errno::EXXX>)) ���顼��ȯ��������硢
  "nonblocking IO#read is obsolete" �Ȥ����ٹ𤬽Ф�褦�ˤʤ�ޤ�����
  ������ ruby 1.8 �� nonblocking IO#read �ΰܹ���Ȥ���
  ruby 1.8.3 �� IO#((<IO/readpartial>)) ���ɲä���ޤ�����
  ((<ruby-dev:25430>)) ((<ruby-dev:25443>))

    $ ruby -e 'sleep 1; print "hoge"' | ruby-1.8.2 -rio/nonblock -we '
                                          io = IO.open(0)
                                          io.nonblock = true
                                          p io.read(4)'
    -e:4:in `read': Resource temporarily unavailable (Errno::EAGAIN)
            from -e:4
    
    $ ruby -e 'sleep 1; print "hoge"' | ruby-1.8.3 -rio/nonblock -we '
                                          io = IO.open(0)
                                          io.nonblock = true
                                          p io.read(4)'
    -e:4: warning: nonblocking IO#read is obsolete; use IO#readpartial or IO#sysread
    -e:4:in `read': Resource temporarily unavailable (Errno::EAGAIN)
            from -e:4
    
    $ ruby -e 'sleep 1; print "hoge"' | ruby-1.8.3 -rio/nonblock -we '
                                          io = IO.open(0)
                                          io.nonblock = true
                                          p io.readpartial(4)'
    "hoge"

    $ ruby -e 'sleep 1; print "hoge"' | ruby-1.9 -rio/nonblock -we '
                                          io = IO.open(0)
                                          io.nonblock = true
                                          p io.read(4)'
    "hoge"

=== 2005-01-05

: srand(bignum) [compat]

  srand �������Ȥ��� unsigned long �����礭���ͤ�����դ���褦�ˤʤ�ޤ�����

: rand(bignum)  [bug]

  ��� ((<Bignum>)) �������äƤ� ���� ((<Bignum>)) ���֤��褦�ˤʤ�ޤ�����

=== 2005-01-03

: srand [compat]

  ������Ϳ���ʤ���硢��ǽ�ʤ� /dev/urandom �򻲾Ȥ���褦�ˤʤ�ޤ�����((<ruby-dev:25392>))