.class public Lcom/applovin/a/b/e;
.super Lcom/applovin/c/n;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/applovin/c/o;

.field private c:Landroid/content/Context;

.field private d:Lcom/applovin/c/l;

.field private e:Lcom/applovin/a/b/bw;

.field private f:Lcom/applovin/a/b/be;

.field private g:Lcom/applovin/a/b/cz;

.field private h:Lcom/applovin/a/b/bh;

.field private i:Lcom/applovin/a/b/dj;

.field private j:Lcom/applovin/a/b/aj;

.field private k:Lcom/applovin/a/b/al;

.field private l:Lcom/applovin/a/b/dc;

.field private m:Lcom/applovin/a/b/cx;

.field private n:Lcom/applovin/a/b/d;

.field private o:Lcom/applovin/a/b/an;

.field private p:Lcom/applovin/a/b/h;

.field private q:Lcom/applovin/a/b/f;

.field private r:Lcom/applovin/a/b/ar;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/c/n;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/b/e;->s:Z

    iput-boolean v1, p0, Lcom/applovin/a/b/e;->t:Z

    iput-boolean v1, p0, Lcom/applovin/a/b/e;->u:Z

    iput-boolean v1, p0, Lcom/applovin/a/b/e;->v:Z

    iput-boolean v1, p0, Lcom/applovin/a/b/e;->w:Z

    return-void
.end method

.method private static x()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->f:Lcom/applovin/a/b/be;

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/applovin/c/o;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/b/e;->s:Z

    iget-object v0, p0, Lcom/applovin/a/b/e;->e:Lcom/applovin/a/b/bw;

    new-instance v1, Lcom/applovin/a/b/bv;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/bv;-><init>(Lcom/applovin/a/b/e;Lcom/applovin/c/o;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bv;J)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/applovin/c/o;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/applovin/a/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/a/b/e;->b:Lcom/applovin/c/o;

    iput-object p3, p0, Lcom/applovin/a/b/e;->c:Landroid/content/Context;

    :try_start_0
    new-instance v2, Lcom/applovin/a/b/cv;

    invoke-direct {v2}, Lcom/applovin/a/b/cv;-><init>()V

    iput-object v2, p0, Lcom/applovin/a/b/e;->d:Lcom/applovin/c/l;

    new-instance v1, Lcom/applovin/a/b/be;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/be;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->f:Lcom/applovin/a/b/be;

    new-instance v1, Lcom/applovin/a/b/bw;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/bw;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->e:Lcom/applovin/a/b/bw;

    new-instance v1, Lcom/applovin/a/b/cz;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/cz;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->g:Lcom/applovin/a/b/cz;

    new-instance v1, Lcom/applovin/a/b/bh;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/bh;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->h:Lcom/applovin/a/b/bh;

    new-instance v1, Lcom/applovin/a/b/dj;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/dj;-><init>(Lcom/applovin/c/n;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->i:Lcom/applovin/a/b/dj;

    new-instance v1, Lcom/applovin/a/b/dc;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/dc;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->l:Lcom/applovin/a/b/dc;

    new-instance v1, Lcom/applovin/a/b/d;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/d;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->n:Lcom/applovin/a/b/d;

    new-instance v1, Lcom/applovin/a/b/an;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/an;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->o:Lcom/applovin/a/b/an;

    new-instance v1, Lcom/applovin/a/b/h;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/h;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->p:Lcom/applovin/a/b/h;

    new-instance v1, Lcom/applovin/a/b/f;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/f;-><init>(Lcom/applovin/c/n;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->q:Lcom/applovin/a/b/f;

    new-instance v1, Lcom/applovin/a/b/ar;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/ar;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->r:Lcom/applovin/a/b/ar;

    new-instance v1, Lcom/applovin/a/b/aj;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/aj;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->j:Lcom/applovin/a/b/aj;

    new-instance v1, Lcom/applovin/a/b/al;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/al;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->k:Lcom/applovin/a/b/al;

    new-instance v1, Lcom/applovin/a/b/cx;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/cx;-><init>(Lcom/applovin/a/b/e;)V

    iput-object v1, p0, Lcom/applovin/a/b/e;->m:Lcom/applovin/a/b/cx;

    invoke-static {}, Lcom/applovin/a/b/e;->x()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/a/b/e;->v:Z

    const-string/jumbo v1, "AppLovinSdk"

    const-string/jumbo v3, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/a/b/e;->w:Z

    const-string/jumbo v1, "AppLovinSdk"

    const-string/jumbo v3, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "AppLovinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Called with an invalid SDK key from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/a/b/e;->c()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/applovin/a/b/e;->f:Lcom/applovin/a/b/be;

    invoke-virtual {v2, v1}, Lcom/applovin/a/b/cv;->a(Lcom/applovin/a/b/be;)V

    instance-of v1, p2, Lcom/applovin/a/b/af;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/applovin/a/b/af;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/applovin/a/b/af;->a()Lcom/applovin/a/b/cw;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/a/b/cv;->a(Lcom/applovin/a/b/cw;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/c/o;)V

    :goto_0
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/applovin/a/b/e;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AppLovinSdk"

    const-string/jumbo v3, "Failed to load AppLovin SDK, ad serving will be disabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v6}, Lcom/applovin/a/b/e;->a(Z)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/a/b/e;->s:Z

    iput-boolean p1, p0, Lcom/applovin/a/b/e;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/b/e;->u:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/b/e;->t:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/b/e;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/a/b/e;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/applovin/c/f;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->n:Lcom/applovin/a/b/d;

    return-object v0
.end method

.method public e()Lcom/applovin/c/q;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->m:Lcom/applovin/a/b/cx;

    return-object v0
.end method

.method public f()Lcom/applovin/c/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->d:Lcom/applovin/c/l;

    return-object v0
.end method

.method public g()Lcom/applovin/a/b/be;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->f:Lcom/applovin/a/b/be;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method public i()Lcom/applovin/a/b/cz;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->g:Lcom/applovin/a/b/cz;

    return-object v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method k()Lcom/applovin/a/b/bw;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->e:Lcom/applovin/a/b/bw;

    return-object v0
.end method

.method l()Lcom/applovin/a/b/bh;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->h:Lcom/applovin/a/b/bh;

    return-object v0
.end method

.method public m()Lcom/applovin/a/b/dj;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->i:Lcom/applovin/a/b/dj;

    return-object v0
.end method

.method n()Lcom/applovin/a/b/aj;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->j:Lcom/applovin/a/b/aj;

    return-object v0
.end method

.method o()Lcom/applovin/a/b/al;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->k:Lcom/applovin/a/b/al;

    return-object v0
.end method

.method public p()Lcom/applovin/a/b/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->p:Lcom/applovin/a/b/h;

    return-object v0
.end method

.method public q()Lcom/applovin/b/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->o:Lcom/applovin/a/b/an;

    return-object v0
.end method

.method public r()Lcom/applovin/c/k;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->q:Lcom/applovin/a/b/f;

    return-object v0
.end method

.method public s()Lcom/applovin/a/b/ar;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->r:Lcom/applovin/a/b/ar;

    return-object v0
.end method

.method public t()Lcom/applovin/a/b/dc;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->l:Lcom/applovin/a/b/dc;

    return-object v0
.end method

.method u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/b/e;->s:Z

    return v0
.end method

.method v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/b/e;->u:Z

    return v0
.end method

.method w()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/e;->f:Lcom/applovin/a/b/be;

    invoke-virtual {v0}, Lcom/applovin/a/b/be;->d()V

    iget-object v0, p0, Lcom/applovin/a/b/e;->f:Lcom/applovin/a/b/be;

    invoke-virtual {v0}, Lcom/applovin/a/b/be;->b()V

    iget-object v0, p0, Lcom/applovin/a/b/e;->h:Lcom/applovin/a/b/bh;

    invoke-virtual {v0}, Lcom/applovin/a/b/bh;->a()V

    return-void
.end method
