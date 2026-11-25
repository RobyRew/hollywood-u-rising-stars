.class final Lcom/leanplum/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:I

.field static d:Z

.field static e:I

.field static f:I

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Z

.field static k:Z

.field static l:Z

.field static m:Z

.field static n:Z

.field static o:Z

.field static p:Z

.field static q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    const-string/jumbo v0, "www.leanplum.com"

    sput-object v0, Lcom/leanplum/cu;->a:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "dev.leanplum.com"

    sput-object v0, Lcom/leanplum/cu;->b:Ljava/lang/String;

    .line 12
    const/16 v0, 0x50

    sput v0, Lcom/leanplum/cu;->c:I

    .line 13
    sput-boolean v2, Lcom/leanplum/cu;->d:Z

    .line 14
    sput v3, Lcom/leanplum/cu;->e:I

    .line 15
    sput v3, Lcom/leanplum/cu;->f:I

    .line 17
    const-string/jumbo v0, "1.2.25"

    sput-object v0, Lcom/leanplum/cu;->g:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "android"

    sput-object v0, Lcom/leanplum/cu;->h:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/leanplum/cu;->i:Ljava/lang/String;

    .line 27
    sput-boolean v2, Lcom/leanplum/cu;->j:Z

    .line 28
    sput-boolean v1, Lcom/leanplum/cu;->k:Z

    .line 30
    sput-boolean v1, Lcom/leanplum/cu;->l:Z

    .line 31
    sput-boolean v1, Lcom/leanplum/cu;->m:Z

    .line 32
    sput-boolean v2, Lcom/leanplum/cu;->n:Z

    .line 33
    sput-boolean v1, Lcom/leanplum/cu;->o:Z

    .line 34
    sput-boolean v1, Lcom/leanplum/cu;->p:Z

    .line 40
    const-string/jumbo v0, "api"

    sput-object v0, Lcom/leanplum/cu;->q:Ljava/lang/String;

    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/leanplum/cu;->l:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/leanplum/cu;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
