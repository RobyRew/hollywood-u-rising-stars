.class final Lcom/leanplum/be;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Lcom/leanplum/y;


# direct methods
.method constructor <init>(Lcom/leanplum/y;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/leanplum/be;->c:Lcom/leanplum/y;

    iput-object p2, p0, Lcom/leanplum/be;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/leanplum/be;->b:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/be;->c:Lcom/leanplum/y;

    sget-object v1, Lcom/leanplum/cu;->a:Ljava/lang/String;

    sget-object v2, Lcom/leanplum/cu;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/leanplum/be;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/leanplum/be;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/leanplum/y;->a(Lcom/leanplum/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/leanplum/be;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
