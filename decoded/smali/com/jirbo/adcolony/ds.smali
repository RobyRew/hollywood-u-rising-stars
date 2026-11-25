.class Lcom/jirbo/adcolony/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:D

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Lcom/jirbo/adcolony/dx;

.field g:Ljava/lang/String;

.field h:Lcom/jirbo/adcolony/du;

.field i:Lcom/jirbo/adcolony/dp;

.field j:Lcom/jirbo/adcolony/dp;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1884
    invoke-static {}, Lcom/jirbo/adcolony/en;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1886
    const/16 v0, 0x8

    sput v0, Lcom/jirbo/adcolony/ba;->aa:I

    .line 1887
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Ad not ready due to no network connection."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1894
    :cond_0
    :goto_0
    return v0

    .line 1889
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ds;->a:Z

    if-eqz v1, :cond_0

    .line 1890
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->f:Lcom/jirbo/adcolony/dx;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dx;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1891
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->h:Lcom/jirbo/adcolony/du;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/du;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/dp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1894
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1899
    if-nez p1, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return v0

    .line 1901
    :cond_1
    const-string/jumbo v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ds;->a:Z

    .line 1903
    const-string/jumbo v1, "load_timeout"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/ds;->b:D

    .line 1904
    const-string/jumbo v1, "load_timeout_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ds;->c:Z

    .line 1905
    const-string/jumbo v1, "load_spinner_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ds;->d:Z

    .line 1906
    const-string/jumbo v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ds;->e:Ljava/lang/String;

    .line 1908
    const-string/jumbo v1, "html5_tag"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ds;->g:Ljava/lang/String;

    .line 1911
    new-instance v1, Lcom/jirbo/adcolony/dx;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dx;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ds;->f:Lcom/jirbo/adcolony/dx;

    .line 1912
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->f:Lcom/jirbo/adcolony/dx;

    const-string/jumbo v2, "mraid_js"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dx;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1915
    new-instance v1, Lcom/jirbo/adcolony/du;

    invoke-direct {v1}, Lcom/jirbo/adcolony/du;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ds;->h:Lcom/jirbo/adcolony/du;

    .line 1916
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->h:Lcom/jirbo/adcolony/du;

    const-string/jumbo v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/du;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    new-instance v1, Lcom/jirbo/adcolony/dp;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dp;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    .line 1920
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    const-string/jumbo v2, "replay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dp;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    new-instance v1, Lcom/jirbo/adcolony/dp;

    invoke-direct {v1}, Lcom/jirbo/adcolony/dp;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    .line 1924
    iget-object v1, p0, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    const-string/jumbo v2, "close"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/dp;->a(Lcom/jirbo/adcolony/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1926
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1931
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ds;->a:Z

    if-nez v0, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->f:Lcom/jirbo/adcolony/dx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->f:Lcom/jirbo/adcolony/dx;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dx;->b()V

    .line 1933
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->h:Lcom/jirbo/adcolony/du;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->h:Lcom/jirbo/adcolony/du;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/du;->b()V

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->i:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dp;->b()V

    .line 1935
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ds;->j:Lcom/jirbo/adcolony/dp;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/dp;->b()V

    goto :goto_0
.end method
