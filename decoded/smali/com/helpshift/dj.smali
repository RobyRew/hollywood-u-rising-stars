.class final Lcom/helpshift/dj;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/helpshift/dj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/helpshift/dj;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/dj;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "word"

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/dj;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method
