.class final Lcom/leanplum/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/leanplum/dk;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/leanplum/dk;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/leanplum/dk;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2128
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/dk;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/leanplum/dk;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/leanplum/dk;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/leanplum/Leanplum;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2132
    :goto_0
    return-void

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
