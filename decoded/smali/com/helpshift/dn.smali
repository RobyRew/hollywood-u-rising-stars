.class public Lcom/helpshift/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/ei;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/helpshift/ei;->a(Landroid/content/Context;)Lcom/helpshift/ei;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/dn;->a:Lcom/helpshift/ei;

    .line 27
    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "create table __hs__sections (_id integer primary key autoincrement, __hs__section_id text not null, __hs__publish_id integer not null, __hs__title text not null);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "DROP TABLE IF EXISTS __hs__sections"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "drop table __hs__sections;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected a()Lcom/helpshift/ei;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/dn;->a:Lcom/helpshift/ei;

    return-object v0
.end method
